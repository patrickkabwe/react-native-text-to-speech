//
//  TextToSpeechService.swift
//  TextToSpeech
//
//  Created by Patrick Kabwe on 29/12/2024.
//

import Foundation
import AVFoundation

final class TextToSpeechService: NSObject {
    static let synthesizer = AVSpeechSynthesizer()
    private var cachedVoices: [TextToSpeechVoice]?
    weak var delegate: TextToSpeechDelegate?
    
    override init() {
        super.init()
        TextToSpeechService.synthesizer.delegate = self
    }

    func speak(string text: String, with options: TextToSpeechOptions?) async throws {
        guard !text.isEmpty else {
            throw TextToSpeechError.emptyText
        }
        await MainActor.run {
            let utterance = AVSpeechUtterance(string: text)
            utterance.rate = Float(options?.rate ?? TextToSpeechDefaults.speechRate)
            utterance.pitchMultiplier = Float(options?.pitch ?? TextToSpeechDefaults.pitch)
            utterance.postUtteranceDelay = TimeInterval(
                Float(options?.postUtteranceDelay ?? TextToSpeechDefaults.postUtteranceDelay)
            )
            utterance.preUtteranceDelay = TimeInterval(
                Float(options?.preUtteranceDelay ?? TextToSpeechDefaults.preUtteranceDelay)
            )
            utterance.volume = Float(options?.volume ?? TextToSpeechDefaults.volume)
            utterance.voice = AVSpeechSynthesisVoice(
                identifier: options?.voiceIdentifier ?? TextToSpeechDefaults.voiceIdentifier
            )

            TextToSpeechService.synthesizer.speak(utterance)
        }
    }

    func getVoices() async -> [TextToSpeechVoice] {
        if let cached = cachedVoices {
            return cached
        }
        let results = AVSpeechSynthesisVoice.speechVoices()
        var voices: [TextToSpeechVoice] = []
        voices.reserveCapacity(results.count)
        for voice in results {
            voices.append(
                TextToSpeechVoice(
                    identifier: voice.identifier,
                    name: voice.name,
                    quality: self.getQuality(quality: voice.quality),
                    gender: self.getGender(gender: voice.gender)
                )
            )
        }
        cachedVoices = voices
        return voices
    }

    func stop(at boundary: AVSpeechBoundary) async -> Bool {
        if !TextToSpeechService.synthesizer.isSpeaking { return false }
        return await MainActor.run {
            TextToSpeechService.synthesizer.stopSpeaking(at: boundary)
        }
    }
    
    func pause(at boundary: AVSpeechBoundary) async -> Bool {
        if !TextToSpeechService.synthesizer.isSpeaking { return false }
        return await MainActor.run {
            TextToSpeechService.synthesizer.pauseSpeaking(at: boundary)
        }
    }
    
    func resume() async -> Bool {
        if !TextToSpeechService.synthesizer.isSpeaking { return false }
        return await MainActor.run {
            TextToSpeechService.synthesizer.continueSpeaking()
        }
    }
    
    deinit {
        TextToSpeechService.synthesizer.stopSpeaking(at: .immediate)
        cachedVoices = nil
    }
}

extension TextToSpeechService {
    func getQuality(quality: AVSpeechSynthesisVoiceQuality) -> String {
        switch(quality) {
        case .default:
            return "Default"
        case .enhanced:
            return "Enhanced"
        case .premium:
            return "Premium"
        default:
            return "Unknown"
        }
    }
    
    func getGender(gender: AVSpeechSynthesisVoiceGender) -> String {
        switch gender {
        case .female:
            return "Female"
        case .male:
            return "Male"
        default:
            return "Unknown"
        }
    }
}

extension TextToSpeechService: AVSpeechSynthesizerDelegate {
    func speechSynthesizer(_ synthesizer: AVSpeechSynthesizer, didStart utterance: AVSpeechUtterance) {
        delegate?.textToSpeechDidStart(synthesizer)
    }
      
    func speechSynthesizer(_ synthesizer: AVSpeechSynthesizer, didFinish utterance: AVSpeechUtterance) {
        delegate?.textToSpeechDidFinish(synthesizer)
    }
    
    func speechSynthesizer(_ synthesizer: AVSpeechSynthesizer, willSpeakRangeOfSpeechString characterRange: NSRange, utterance: AVSpeechUtterance) {
        let text = utterance.speechString as NSString
        let currentWord = text.substring(with: characterRange)
        delegate?.textToSpeechDidReadText(synthesizer, word: currentWord)
    }
}

enum TextToSpeechError: Error {
    case emptyText
    case synthesizerNotInitialized
}
