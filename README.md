# 📢 React Native Text To Speech Example

Turn your React Native app into a speaking companion with `react-native-nitro-tts`! This powerful text-to-speech package offers seamless voice integration with extensive customization options.

## ✨ Features

- 🎙️ Start, stop, pause, and resume text-to-speech
- 🎚️ Customize pitch, rate, volume, and voice
- 📅 Event listeners for speech start, finish, and word changes
- 🔧 Simple API with TypeScript support
- 📱 Works on both iOS and Android(Coming Soon)

## 🛠️ Requirements

- React Native >= 0.75.0
- react-native-nitro-modules >= 0.19.0

## 📦 Installation

```sh
bun install react-native-nitro-tts react-native-nitro-modules
```

For iOS, also run:
```sh
cd ios && pod install
```

## 🚀 Usage

Here's a quick example to get you started:

```tsx
import { TextToSpeech } from 'react-native-nitro-tts';

// Basic usage
await TextToSpeech.speak('Hello, World!');

// Advanced usage with options
await TextToSpeech.speak(text, {
  pitch: 0.85,
  rate: 0.4,
  volume: 0.9,
  voiceIdentifier: 'com.apple.voice.premium.en-AU.Karen',
});
```

For a complete example:

```tsx
import React, { useEffect } from "react";
import { Button, StyleSheet, Text, View } from "react-native";
import { TextToSpeech } from "react-native-nitro-tts";

const text =
  "React Native Text To Speech is amazing! 🎉 Check it out by running npm install react-native-nitro-tts";

function App(): React.JSX.Element {
  const speak = async () => {
    try {
      await TextToSpeech.stop();
      await TextToSpeech.speak(text, {
        pitch: 0.85,
        rate: 0.4,
        volume: 0.9,
        postUtteranceDelay: 0,
        voiceIdentifier: "com.apple.voice.premium.en-AU.Karen",
      });
    } catch (error) {
      console.error(error);
    }
  };

  useEffect(() => {
    const unsubscribeStart = TextToSpeech.addEventListener("start", () => {
      console.log("didStart");
    });
    const unsubscribeFinish = TextToSpeech.addEventListener("finish", () => {
      console.log("didFinish");
    });
    const unsubscribeWord = TextToSpeech.addEventListener("word", (word) => {
      console.log("didWordChange", word);
    });

    return () => {
      unsubscribeFinish();
      unsubscribeWord();
      unsubscribeStart();
    };
  }, []);

  return (
    <View style={styles.container}>
      <Text style={styles.header}>React Native Text To Speech</Text>

      <Button title="Press to speak" onPress={speak} />
      <Button title="Press to stop" onPress={TextToSpeech.stop} />
      <Button title="Press to pause" onPress={TextToSpeech.pause} />
      <Button title="Press to resume" onPress={TextToSpeech.resume} />
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: "center",
    alignItems: "center",
  },

  header: {
    fontSize: 40,
    textAlign: "center",
    marginBottom: 20,
  },
});

export default App;
```

## 📚 API Reference

### Methods

- `speak(text: string, options?: TextToSpeechOptions): Promise<void>`
- `stop(): Promise<void>`
- `pause(): Promise<void>`
- `resume(): Promise<void>`

### Events

- `start`: Fired when speech begins
- `finish`: Fired when speech completes
- `word`: Fired for each word spoken (with word data)

### SpeechOptions

```typescript
interface TextToSpeechOptions {
  pitch?: number;        
  rate?: number;         
  volume?: number;       
  voiceIdentifier?: string;
  postUtteranceDelay?: number;
  preUtteranceDelay?: number;
}
```

## 👥 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## 📄 License

This project is licensed under the MIT License.
