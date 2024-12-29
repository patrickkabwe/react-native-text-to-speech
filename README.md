# 📢 React Native Text To Speech Example

This project demonstrates how to use the `react-native-nitro-tts` package to implement text-to-speech functionality in a React Native application.

## 📦 Installation

First, install the package using npm:

```sh
npm install react-native-nitro-tts
```

## 🚀 Usage

Below is an example of how to use the `react-native-nitro-tts` package in your React Native application.

```tsx
import React, {useEffect} from 'react';
import {Button, StyleSheet, Text, View} from 'react-native';
import {TextToSpeech} from 'react-native-nitro-tts';

const text =
  'React Native Text To Speech is amazing! 🎉 Check it out by running npm install react-native-nitro-tts';

function App(): React.JSX.Element {
  const speak = async () => {
    try {
      await TextToSpeech.stop();
      await TextToSpeech.speak(text, {
        pitch: 0.85,
        rate: 0.4,
        volume: 0.9,
        postUtteranceDelay: 0,
        voiceIdentifier: 'com.apple.voice.premium.en-AU.Karen',
      });
    } catch (error) {
      console.error(error);
    }
  };

  useEffect(() => {
    const unsubscribeStart = TextToSpeech.addEventListener('start', () => {
      console.log('didStart');
    });
    const unsubscribeFinish = TextToSpeech.addEventListener('finish', () => {
      console.log('didFinish');
    });
    const unsubscribeWord = TextToSpeech.addEventListener('word', word => {
      console.log('didWordChange', word);
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
    justifyContent: 'center',
    alignItems: 'center',
  },

  header: {
    fontSize: 40,
    textAlign: 'center',
    marginBottom: 20,
  },
});

export default App;
```

## ✨ Features

- 🎙️ Start, stop, pause, and resume text-to-speech.
- 🎚️ Customize pitch, rate, volume, and voice.
- 📅 Listen to events such as start, finish, and word change.

## 📄 License

This project is licensed under the MIT License.