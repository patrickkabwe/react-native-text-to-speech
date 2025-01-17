///
/// HybridTextToSpeechSpec_cxx.swift
/// This file was generated by nitrogen. DO NOT MODIFY THIS FILE.
/// https://github.com/mrousavy/nitro
/// Copyright © 2024 Marc Rousavy @ Margelo
///

import Foundation
import NitroModules

/**
 * A class implementation that bridges HybridTextToSpeechSpec over to C++.
 * In C++, we cannot use Swift protocols - so we need to wrap it in a class to make it strongly defined.
 *
 * Also, some Swift types need to be bridged with special handling:
 * - Enums need to be wrapped in Structs, otherwise they cannot be accessed bi-directionally (Swift bug: https://github.com/swiftlang/swift/issues/75330)
 * - Other HybridObjects need to be wrapped/unwrapped from the Swift TCxx wrapper
 * - Throwing methods need to be wrapped with a Result<T, Error> type, as exceptions cannot be propagated to C++
 */
public class HybridTextToSpeechSpec_cxx {
  /**
   * The Swift <> C++ bridge's namespace (`margelo::nitro::nitrotexttospeech::bridge::swift`)
   * from `NitroTextToSpeech-Swift-Cxx-Bridge.hpp`.
   * This contains specialized C++ templates, and C++ helper functions that can be accessed from Swift.
   */
  public typealias bridge = margelo.nitro.nitrotexttospeech.bridge.swift

  /**
   * Holds an instance of the `HybridTextToSpeechSpec` Swift protocol.
   */
  private var __implementation: any HybridTextToSpeechSpec

  /**
   * Holds a weak pointer to the C++ class that wraps the Swift class.
   */
  private var __cxxPart: bridge.std__weak_ptr_margelo__nitro__nitrotexttospeech__HybridTextToSpeechSpec_

  /**
   * Create a new `HybridTextToSpeechSpec_cxx` that wraps the given `HybridTextToSpeechSpec`.
   * All properties and methods bridge to C++ types.
   */
  public init(_ implementation: any HybridTextToSpeechSpec) {
    self.__implementation = implementation
    self.__cxxPart = .init()
    /* no base class */
  }

  /**
   * Get the actual `HybridTextToSpeechSpec` instance this class wraps.
   */
  @inline(__always)
  public func getHybridTextToSpeechSpec() -> any HybridTextToSpeechSpec {
    return __implementation
  }

  /**
   * Casts this instance to a retained unsafe raw pointer.
   * This acquires one additional strong reference on the object!
   */
  public func toUnsafe() -> UnsafeMutableRawPointer {
    return Unmanaged.passRetained(self).toOpaque()
  }

  /**
   * Casts an unsafe pointer to a `HybridTextToSpeechSpec_cxx`.
   * The pointer has to be a retained opaque `Unmanaged<HybridTextToSpeechSpec_cxx>`.
   * This removes one strong reference from the object!
   */
  public class func fromUnsafe(_ pointer: UnsafeMutableRawPointer) -> HybridTextToSpeechSpec_cxx {
    return Unmanaged<HybridTextToSpeechSpec_cxx>.fromOpaque(pointer).takeRetainedValue()
  }

  /**
   * Gets (or creates) the C++ part of this Hybrid Object.
   * The C++ part is a `std::shared_ptr<margelo::nitro::nitrotexttospeech::HybridTextToSpeechSpec>`.
   */
  public func getCxxPart() -> bridge.std__shared_ptr_margelo__nitro__nitrotexttospeech__HybridTextToSpeechSpec_ {
    let cachedCxxPart = self.__cxxPart.lock()
    if cachedCxxPart.__convertToBool() {
      return cachedCxxPart
    } else {
      let newCxxPart = bridge.create_std__shared_ptr_margelo__nitro__nitrotexttospeech__HybridTextToSpeechSpec_(self.toUnsafe())
      __cxxPart = bridge.weakify_std__shared_ptr_margelo__nitro__nitrotexttospeech__HybridTextToSpeechSpec_(newCxxPart)
      return newCxxPart
    }
  }

  

  /**
   * Get the memory size of the Swift class (plus size of any other allocations)
   * so the JS VM can properly track it and garbage-collect the JS object if needed.
   */
  @inline(__always)
  public var memorySize: Int {
    return MemoryHelper.getSizeOf(self.__implementation) + self.__implementation.memorySize
  }

  // Properties
  

  // Methods
  @inline(__always)
  public func speak(text: std.string, options: bridge.std__optional_TextToSpeechOptions_) -> bridge.Result_std__shared_ptr_Promise_void___ {
    do {
      let __result = try self.__implementation.speak(text: String(text), options: { () -> TextToSpeechOptions? in
        if let __unwrapped = options.value {
          return __unwrapped
        } else {
          return nil
        }
      }())
      let __resultCpp = { () -> bridge.std__shared_ptr_Promise_void__ in
        let __promise = bridge.create_std__shared_ptr_Promise_void__()
        let __promiseHolder = bridge.wrap_std__shared_ptr_Promise_void__(__promise)
        __result
          .then({ __result in __promiseHolder.resolve() })
          .catch({ __error in __promiseHolder.reject(__error.toCpp()) })
        return __promise
      }()
      return bridge.create_Result_std__shared_ptr_Promise_void___(__resultCpp)
    } catch (let __error) {
      let __exceptionPtr = __error.toCpp()
      return bridge.create_Result_std__shared_ptr_Promise_void___(__exceptionPtr)
    }
  }
  
  @inline(__always)
  public func stop() -> bridge.Result_std__shared_ptr_Promise_bool___ {
    do {
      let __result = try self.__implementation.stop()
      let __resultCpp = { () -> bridge.std__shared_ptr_Promise_bool__ in
        let __promise = bridge.create_std__shared_ptr_Promise_bool__()
        let __promiseHolder = bridge.wrap_std__shared_ptr_Promise_bool__(__promise)
        __result
          .then({ __result in __promiseHolder.resolve(__result) })
          .catch({ __error in __promiseHolder.reject(__error.toCpp()) })
        return __promise
      }()
      return bridge.create_Result_std__shared_ptr_Promise_bool___(__resultCpp)
    } catch (let __error) {
      let __exceptionPtr = __error.toCpp()
      return bridge.create_Result_std__shared_ptr_Promise_bool___(__exceptionPtr)
    }
  }
  
  @inline(__always)
  public func pause() -> bridge.Result_std__shared_ptr_Promise_bool___ {
    do {
      let __result = try self.__implementation.pause()
      let __resultCpp = { () -> bridge.std__shared_ptr_Promise_bool__ in
        let __promise = bridge.create_std__shared_ptr_Promise_bool__()
        let __promiseHolder = bridge.wrap_std__shared_ptr_Promise_bool__(__promise)
        __result
          .then({ __result in __promiseHolder.resolve(__result) })
          .catch({ __error in __promiseHolder.reject(__error.toCpp()) })
        return __promise
      }()
      return bridge.create_Result_std__shared_ptr_Promise_bool___(__resultCpp)
    } catch (let __error) {
      let __exceptionPtr = __error.toCpp()
      return bridge.create_Result_std__shared_ptr_Promise_bool___(__exceptionPtr)
    }
  }
  
  @inline(__always)
  public func resume() -> bridge.Result_std__shared_ptr_Promise_bool___ {
    do {
      let __result = try self.__implementation.resume()
      let __resultCpp = { () -> bridge.std__shared_ptr_Promise_bool__ in
        let __promise = bridge.create_std__shared_ptr_Promise_bool__()
        let __promiseHolder = bridge.wrap_std__shared_ptr_Promise_bool__(__promise)
        __result
          .then({ __result in __promiseHolder.resolve(__result) })
          .catch({ __error in __promiseHolder.reject(__error.toCpp()) })
        return __promise
      }()
      return bridge.create_Result_std__shared_ptr_Promise_bool___(__resultCpp)
    } catch (let __error) {
      let __exceptionPtr = __error.toCpp()
      return bridge.create_Result_std__shared_ptr_Promise_bool___(__exceptionPtr)
    }
  }
  
  @inline(__always)
  public func getVoices() -> bridge.Result_std__shared_ptr_Promise_std__vector_TextToSpeechVoice____ {
    do {
      let __result = try self.__implementation.getVoices()
      let __resultCpp = { () -> bridge.std__shared_ptr_Promise_std__vector_TextToSpeechVoice___ in
        let __promise = bridge.create_std__shared_ptr_Promise_std__vector_TextToSpeechVoice___()
        let __promiseHolder = bridge.wrap_std__shared_ptr_Promise_std__vector_TextToSpeechVoice___(__promise)
        __result
          .then({ __result in __promiseHolder.resolve({ () -> bridge.std__vector_TextToSpeechVoice_ in
              var __vector = bridge.create_std__vector_TextToSpeechVoice_(__result.count)
              for __item in __result {
                __vector.push_back(__item)
              }
              return __vector
            }()) })
          .catch({ __error in __promiseHolder.reject(__error.toCpp()) })
        return __promise
      }()
      return bridge.create_Result_std__shared_ptr_Promise_std__vector_TextToSpeechVoice____(__resultCpp)
    } catch (let __error) {
      let __exceptionPtr = __error.toCpp()
      return bridge.create_Result_std__shared_ptr_Promise_std__vector_TextToSpeechVoice____(__exceptionPtr)
    }
  }
  
  @inline(__always)
  public func addEventListener(event: Int32, listener: bridge.Func_void_std__optional_std__string_) -> bridge.Result_std__function_void____ {
    do {
      let __result = try self.__implementation.addEventListener(event: margelo.nitro.nitrotexttospeech.EventName(rawValue: event)!, listener: { () -> ((String?) -> Void) in
        let __wrappedFunction = bridge.wrap_Func_void_std__optional_std__string_(listener)
        return { (__word: String?) -> Void in
          __wrappedFunction.call({ () -> bridge.std__optional_std__string_ in
            if let __unwrappedValue = __word {
              return bridge.create_std__optional_std__string_(std.string(__unwrappedValue))
            } else {
              return .init()
            }
          }())
        }
      }())
      let __resultCpp = { () -> bridge.Func_void in
        let __closureWrapper = Func_void(__result)
        return bridge.create_Func_void(__closureWrapper.toUnsafe())
      }()
      return bridge.create_Result_std__function_void____(__resultCpp)
    } catch (let __error) {
      let __exceptionPtr = __error.toCpp()
      return bridge.create_Result_std__function_void____(__exceptionPtr)
    }
  }
}
