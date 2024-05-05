import 'package:speech_to_text/speech_to_text.dart' as stt;
import 'package:translator/translator.dart';
import 'package:flutter_langdetect/flutter_langdetect.dart' as langdetect;
import 'package:flutter/material.dart';

class WolofAssistant {
  late stt.SpeechToText _speech;
  late GoogleTranslator _translator;
  List<String> _results = [];

  WolofAssistant() {
    _speech = stt.SpeechToText();
    _translator = GoogleTranslator();
    langdetect.initLangDetect();
  }

  Future<void> initialize() async {
    await _speech.initialize();
  }

  Future<void> startListening({required Function(String) onResult}) async {
    await _speech.listen(
      onResult: (result) async {
        final detectedLanguage = await detectLanguage(result.recognizedWords);
        final translatedText = await translateText(result.recognizedWords, detectedLanguage);
        _results.add(translatedText); // Ajouter le texte traduit à la liste des résultats
        onResult('Language: $detectedLanguage, Translated Text: $translatedText');
      },
    );
  }

  Future<void> stopListening() async {
    await _speech.stop();
  }

  Future<String> detectLanguage(String text) async {
    final language = await langdetect.detect(text);
    return language;
  }

  Future<String> translateText(String text, String fromLanguage) async {
    final translation = await _translator.translate(text, from: fromLanguage, to: 'en');
    return translation.text!;
  }

  Future<void> dispose() async {
    await _speech.stop();
    _speech = stt.SpeechToText();
  }

  List<String> get results => _results; // Getter pour accéder à la liste des résultats
}
