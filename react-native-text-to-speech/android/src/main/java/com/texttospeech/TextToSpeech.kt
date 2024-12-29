
package com.texttospeech

import com.margelo.nitro.texttospeech.HybridTextToSpeechSpec

class TextToSpeech: HybridTextToSpeechSpec() {
    override val memorySize: Long
        get() = 5
    
    override fun sum(num1: Double, num2: Double): Double {
        return num1 + num2
    }
}
