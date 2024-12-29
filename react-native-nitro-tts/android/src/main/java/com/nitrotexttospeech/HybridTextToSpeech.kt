package com.nitrotexttospeech

import com.margelo.nitro.core.Promise
import com.margelo.nitro.nitrotexttospeech.EventName
import com.margelo.nitro.nitrotexttospeech.HybridTextToSpeechSpec
import com.margelo.nitro.nitrotexttospeech.TextToSpeechOptions
import com.margelo.nitro.nitrotexttospeech.TextToSpeechVoice

class HybridTextToSpeech: HybridTextToSpeechSpec() {
    override fun speak(text: String, options: TextToSpeechOptions?): Promise<Unit> {
        TODO("Not yet implemented")
    }

    override fun stop(): Promise<Boolean> {
        TODO("Not yet implemented")
    }

    override fun pause(): Promise<Boolean> {
        TODO("Not yet implemented")
    }

    override fun resume(): Promise<Boolean> {
        TODO("Not yet implemented")
    }

    override fun getVoices(): Promise<Array<TextToSpeechVoice>> {
        TODO("Not yet implemented")
    }

    override fun addEventListener(event: EventName, listener: (word: String?) -> Unit): () -> Unit {
        TODO("Not yet implemented")
    }

    override val memorySize: Long
        get() = 5
}
