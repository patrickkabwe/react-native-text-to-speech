///
/// TextToSpeechOptions.swift
/// This file was generated by nitrogen. DO NOT MODIFY THIS FILE.
/// https://github.com/mrousavy/nitro
/// Copyright © 2025 Marc Rousavy @ Margelo
///

import NitroModules

/**
 * Represents an instance of `TextToSpeechOptions`, backed by a C++ struct.
 */
public typealias TextToSpeechOptions = margelo.nitro.nitrotexttospeech.TextToSpeechOptions

public extension TextToSpeechOptions {
  private typealias bridge = margelo.nitro.nitrotexttospeech.bridge.swift

  /**
   * Create a new instance of `TextToSpeechOptions`.
   */
  init(voiceIdentifier: String?, rate: Double?, pitch: Double?, postUtteranceDelay: Double?, preUtteranceDelay: Double?, volume: Double?) {
    self.init({ () -> bridge.std__optional_std__string_ in
      if let __unwrappedValue = voiceIdentifier {
        return bridge.create_std__optional_std__string_(std.string(__unwrappedValue))
      } else {
        return .init()
      }
    }(), { () -> bridge.std__optional_double_ in
      if let __unwrappedValue = rate {
        return bridge.create_std__optional_double_(__unwrappedValue)
      } else {
        return .init()
      }
    }(), { () -> bridge.std__optional_double_ in
      if let __unwrappedValue = pitch {
        return bridge.create_std__optional_double_(__unwrappedValue)
      } else {
        return .init()
      }
    }(), { () -> bridge.std__optional_double_ in
      if let __unwrappedValue = postUtteranceDelay {
        return bridge.create_std__optional_double_(__unwrappedValue)
      } else {
        return .init()
      }
    }(), { () -> bridge.std__optional_double_ in
      if let __unwrappedValue = preUtteranceDelay {
        return bridge.create_std__optional_double_(__unwrappedValue)
      } else {
        return .init()
      }
    }(), { () -> bridge.std__optional_double_ in
      if let __unwrappedValue = volume {
        return bridge.create_std__optional_double_(__unwrappedValue)
      } else {
        return .init()
      }
    }())
  }

  var voiceIdentifier: String? {
    @inline(__always)
    get {
      return { () -> String? in
        if let __unwrapped = self.__voiceIdentifier.value {
          return String(__unwrapped)
        } else {
          return nil
        }
      }()
    }
    @inline(__always)
    set {
      self.__voiceIdentifier = { () -> bridge.std__optional_std__string_ in
        if let __unwrappedValue = newValue {
          return bridge.create_std__optional_std__string_(std.string(__unwrappedValue))
        } else {
          return .init()
        }
      }()
    }
  }
  
  var rate: Double? {
    @inline(__always)
    get {
      return self.__rate.value
    }
    @inline(__always)
    set {
      self.__rate = { () -> bridge.std__optional_double_ in
        if let __unwrappedValue = newValue {
          return bridge.create_std__optional_double_(__unwrappedValue)
        } else {
          return .init()
        }
      }()
    }
  }
  
  var pitch: Double? {
    @inline(__always)
    get {
      return self.__pitch.value
    }
    @inline(__always)
    set {
      self.__pitch = { () -> bridge.std__optional_double_ in
        if let __unwrappedValue = newValue {
          return bridge.create_std__optional_double_(__unwrappedValue)
        } else {
          return .init()
        }
      }()
    }
  }
  
  var postUtteranceDelay: Double? {
    @inline(__always)
    get {
      return self.__postUtteranceDelay.value
    }
    @inline(__always)
    set {
      self.__postUtteranceDelay = { () -> bridge.std__optional_double_ in
        if let __unwrappedValue = newValue {
          return bridge.create_std__optional_double_(__unwrappedValue)
        } else {
          return .init()
        }
      }()
    }
  }
  
  var preUtteranceDelay: Double? {
    @inline(__always)
    get {
      return self.__preUtteranceDelay.value
    }
    @inline(__always)
    set {
      self.__preUtteranceDelay = { () -> bridge.std__optional_double_ in
        if let __unwrappedValue = newValue {
          return bridge.create_std__optional_double_(__unwrappedValue)
        } else {
          return .init()
        }
      }()
    }
  }
  
  var volume: Double? {
    @inline(__always)
    get {
      return self.__volume.value
    }
    @inline(__always)
    set {
      self.__volume = { () -> bridge.std__optional_double_ in
        if let __unwrappedValue = newValue {
          return bridge.create_std__optional_double_(__unwrappedValue)
        } else {
          return .init()
        }
      }()
    }
  }
}
