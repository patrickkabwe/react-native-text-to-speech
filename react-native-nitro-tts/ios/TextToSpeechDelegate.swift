//
//  TextToSpeechDelegate.swift
//  TextToSpeech
//
//  Created by Patrick Kabwe on 29/12/2024.
//

import Foundation
import AVFoundation

protocol TextToSpeechDelegate: AnyObject {
    func textToSpeechDidFinish(_ synthesizer: AVSpeechSynthesizer)
    func textToSpeechDidStart(_ synthesizer: AVSpeechSynthesizer)
    func textToSpeechDidReadText(_ synthesizer: AVSpeechSynthesizer, word: String)
}
