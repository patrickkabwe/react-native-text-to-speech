///
/// NitroTextToSpeechAutolinking.swift
/// This file was generated by nitrogen. DO NOT MODIFY THIS FILE.
/// https://github.com/mrousavy/nitro
/// Copyright © 2024 Marc Rousavy @ Margelo
///

public final class NitroTextToSpeechAutolinking {
  public typealias bridge = margelo.nitro.nitrotexttospeech.bridge.swift

  /**
   * Creates an instance of a Swift class that implements `HybridTextToSpeechSpec`,
   * and wraps it in a Swift class that can directly interop with C++ (`HybridTextToSpeechSpec_cxx`)
   *
   * This is generated by Nitrogen and will initialize the class specified
   * in the `"autolinking"` property of `nitro.json` (in this case, `HybridTextToSpeech`).
   */
  public static func createTextToSpeech() -> bridge.std__shared_ptr_margelo__nitro__nitrotexttospeech__HybridTextToSpeechSpec_ {
    let hybridObject = HybridTextToSpeech()
    return { () -> bridge.std__shared_ptr_margelo__nitro__nitrotexttospeech__HybridTextToSpeechSpec_ in
      let __cxxWrapped = hybridObject.getCxxWrapper()
      return __cxxWrapped.getCxxPart()
    }()
  }
}