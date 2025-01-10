///
/// HybridTextToSpeechSpec.hpp
/// This file was generated by nitrogen. DO NOT MODIFY THIS FILE.
/// https://github.com/mrousavy/nitro
/// Copyright © 2025 Marc Rousavy @ Margelo
///

#pragma once

#include <NitroModules/JHybridObject.hpp>
#include <fbjni/fbjni.h>
#include "HybridTextToSpeechSpec.hpp"




namespace margelo::nitro::nitrotexttospeech {

  using namespace facebook;

  class JHybridTextToSpeechSpec: public jni::HybridClass<JHybridTextToSpeechSpec, JHybridObject>,
                                 public virtual HybridTextToSpeechSpec {
  public:
    static auto constexpr kJavaDescriptor = "Lcom/margelo/nitro/nitrotexttospeech/HybridTextToSpeechSpec;";
    static jni::local_ref<jhybriddata> initHybrid(jni::alias_ref<jhybridobject> jThis);
    static void registerNatives();

  protected:
    // C++ constructor (called from Java via `initHybrid()`)
    explicit JHybridTextToSpeechSpec(jni::alias_ref<jhybridobject> jThis) :
      HybridObject(HybridTextToSpeechSpec::TAG),
      _javaPart(jni::make_global(jThis)) {}

  public:
    virtual ~JHybridTextToSpeechSpec() {
      // Hermes GC can destroy JS objects on a non-JNI Thread.
      jni::ThreadScope::WithClassLoader([&] { _javaPart.reset(); });
    }

  public:
    size_t getExternalMemorySize() noexcept override;

  public:
    inline const jni::global_ref<JHybridTextToSpeechSpec::javaobject>& getJavaPart() const noexcept {
      return _javaPart;
    }

  public:
    // Properties
    

  public:
    // Methods
    std::shared_ptr<Promise<void>> speak(const std::string& text, const std::optional<TextToSpeechOptions>& options) override;
    std::shared_ptr<Promise<bool>> stop() override;
    std::shared_ptr<Promise<bool>> pause() override;
    std::shared_ptr<Promise<bool>> resume() override;
    std::shared_ptr<Promise<std::vector<TextToSpeechVoice>>> getVoices() override;
    std::function<void()> addListener(EventName event, const std::function<void(const std::optional<std::string>& /* word */)>& listener) override;

  private:
    friend HybridBase;
    using HybridBase::HybridBase;
    jni::global_ref<JHybridTextToSpeechSpec::javaobject> _javaPart;
  };

} // namespace margelo::nitro::nitrotexttospeech
