#include <jni.h>
#include "TextToSpeechOnLoad.hpp"

JNIEXPORT jint JNICALL JNI_OnLoad(JavaVM* vm, void*) {
  return margelo::nitro::texttospeech::initialize(vm);
}
