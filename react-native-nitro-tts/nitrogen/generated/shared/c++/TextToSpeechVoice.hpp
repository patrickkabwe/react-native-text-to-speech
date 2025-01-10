///
/// TextToSpeechVoice.hpp
/// This file was generated by nitrogen. DO NOT MODIFY THIS FILE.
/// https://github.com/mrousavy/nitro
/// Copyright © 2025 Marc Rousavy @ Margelo
///

#pragma once

#if __has_include(<NitroModules/JSIConverter.hpp>)
#include <NitroModules/JSIConverter.hpp>
#else
#error NitroModules cannot be found! Are you sure you installed NitroModules properly?
#endif
#if __has_include(<NitroModules/NitroDefines.hpp>)
#include <NitroModules/NitroDefines.hpp>
#else
#error NitroModules cannot be found! Are you sure you installed NitroModules properly?
#endif



#include <string>

namespace margelo::nitro::nitrotexttospeech {

  /**
   * A struct which can be represented as a JavaScript object (TextToSpeechVoice).
   */
  struct TextToSpeechVoice {
  public:
    std::string identifier     SWIFT_PRIVATE;
    std::string name     SWIFT_PRIVATE;
    std::string quality     SWIFT_PRIVATE;
    std::string gender     SWIFT_PRIVATE;

  public:
    explicit TextToSpeechVoice(std::string identifier, std::string name, std::string quality, std::string gender): identifier(identifier), name(name), quality(quality), gender(gender) {}
  };

} // namespace margelo::nitro::nitrotexttospeech

namespace margelo::nitro {

  using namespace margelo::nitro::nitrotexttospeech;

  // C++ TextToSpeechVoice <> JS TextToSpeechVoice (object)
  template <>
  struct JSIConverter<TextToSpeechVoice> {
    static inline TextToSpeechVoice fromJSI(jsi::Runtime& runtime, const jsi::Value& arg) {
      jsi::Object obj = arg.asObject(runtime);
      return TextToSpeechVoice(
        JSIConverter<std::string>::fromJSI(runtime, obj.getProperty(runtime, "identifier")),
        JSIConverter<std::string>::fromJSI(runtime, obj.getProperty(runtime, "name")),
        JSIConverter<std::string>::fromJSI(runtime, obj.getProperty(runtime, "quality")),
        JSIConverter<std::string>::fromJSI(runtime, obj.getProperty(runtime, "gender"))
      );
    }
    static inline jsi::Value toJSI(jsi::Runtime& runtime, const TextToSpeechVoice& arg) {
      jsi::Object obj(runtime);
      obj.setProperty(runtime, "identifier", JSIConverter<std::string>::toJSI(runtime, arg.identifier));
      obj.setProperty(runtime, "name", JSIConverter<std::string>::toJSI(runtime, arg.name));
      obj.setProperty(runtime, "quality", JSIConverter<std::string>::toJSI(runtime, arg.quality));
      obj.setProperty(runtime, "gender", JSIConverter<std::string>::toJSI(runtime, arg.gender));
      return obj;
    }
    static inline bool canConvert(jsi::Runtime& runtime, const jsi::Value& value) {
      if (!value.isObject()) {
        return false;
      }
      jsi::Object obj = value.getObject(runtime);
      if (!JSIConverter<std::string>::canConvert(runtime, obj.getProperty(runtime, "identifier"))) return false;
      if (!JSIConverter<std::string>::canConvert(runtime, obj.getProperty(runtime, "name"))) return false;
      if (!JSIConverter<std::string>::canConvert(runtime, obj.getProperty(runtime, "quality"))) return false;
      if (!JSIConverter<std::string>::canConvert(runtime, obj.getProperty(runtime, "gender"))) return false;
      return true;
    }
  };

} // namespace margelo::nitro
