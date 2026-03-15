import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;

/// Service centralisé pour TTS (synthèse vocale) et STT (reconnaissance vocale).
class VoiceService {
  static final VoiceService _instance = VoiceService._();
  factory VoiceService() => _instance;
  VoiceService._();

  final FlutterTts _tts = FlutterTts();
  bool _ttsReady = false;
  bool _isSpeaking = false;
  bool get isSpeaking => _isSpeaking;

  final stt.SpeechToText _stt = stt.SpeechToText();
  bool _sttAvailable = false;
  bool _isListening = false;
  bool get isListening => _isListening;
  bool get sttAvailable => _sttAvailable;

  ValueChanged<String>? onSpeechResult;
  VoidCallback? onSpeechDone;
  VoidCallback? onTtsDone;

  Future<void> init() async {
    try {
      try {
        await _tts.setSharedInstance(true);
      } catch (_) {}
      _tts.setStartHandler(() => _isSpeaking = true);
      _tts.setCompletionHandler(() {
        _isSpeaking = false;
        onTtsDone?.call();
      });
      _tts.setCancelHandler(() => _isSpeaking = false);
      _tts.setErrorHandler((_) => _isSpeaking = false);
      _ttsReady = true;

      _sttAvailable = await _stt.initialize(
        onError: (e) {
          debugPrint('STT error: $e');
          _isListening = false;
        },
        onStatus: (s) {
          if (s == stt.SpeechToText.doneStatus ||
              s == stt.SpeechToText.notListeningStatus) {
            _isListening = false;
            onSpeechDone?.call();
          }
        },
      );
    } catch (e) {
      debugPrint('VoiceService init error: $e');
      _ttsReady = false;
      _sttAvailable = false;
    }
  }

  Future<void> speak(String text, String lang) async {
    if (text.trim().isEmpty) return;
    try {
      if (!_ttsReady) await init();
      await stopSpeaking();
      final locale = lang == 'en' ? 'en-US' : 'fr-FR';
      await _tts.setLanguage(locale);
      await _tts.setSpeechRate(0.48);
      await _tts.setVolume(1.0);
      await _tts.setPitch(1.0);
      _isSpeaking = true;
      await _tts.speak(text);
    } catch (e) {
      debugPrint('TTS speak error: $e');
      _isSpeaking = false;
    }
  }

  Future<void> stopSpeaking() async {
    try {
      if (_isSpeaking) {
        _isSpeaking = false;
        await _tts.stop();
      }
    } catch (e) {
      debugPrint('TTS stop error: $e');
      _isSpeaking = false;
    }
  }

  Future<bool> startListening(String lang) async {
    try {
      if (!_sttAvailable) _sttAvailable = await _stt.initialize();
      if (!_sttAvailable) return false;
      if (_isListening) await stopListening();
      await stopSpeaking();
      final locale = lang == 'en' ? 'en-US' : 'fr-FR';
      _isListening = true;
      await _stt.listen(
        localeId: locale,
        listenFor: const Duration(seconds: 8),
        pauseFor: const Duration(seconds: 2),
        partialResults: true,
        onResult: (r) {
          onSpeechResult?.call(r.recognizedWords);
          if (r.finalResult) {
            _isListening = false;
            onSpeechDone?.call();
          }
        },
      );
      return true;
    } catch (e) {
      debugPrint('STT startListening error: $e');
      _isListening = false;
      return false;
    }
  }

  Future<void> stopListening() async {
    try {
      if (_isListening) {
        _isListening = false;
        await _stt.stop();
      }
    } catch (e) {
      debugPrint('STT stop error: $e');
      _isListening = false;
    }
  }

  Future<void> dispose() async {
    await stopSpeaking();
    await stopListening();
  }

  static int matchSpokenToOption(
      String spoken, List<String> options, String lang) {
    if (spoken.trim().isEmpty) return -1;
    final s = _normalize(spoken);
    final letterMatch = _matchByLetter(s, options.length);
    if (letterMatch >= 0) return letterMatch;
    int bestIdx = -1;
    int bestScore = 0;
    for (int i = 0; i < options.length; i++) {
      final score = _similarity(s, _normalize(options[i]));
      if (score > bestScore && score >= 2) {
        bestScore = score;
        bestIdx = i;
      }
    }
    return bestIdx;
  }

  static String _normalize(String s) => s
      .toLowerCase()
      .replaceAll(RegExp(r'[àáâã]'), 'a')
      .replaceAll(RegExp(r'[éèêë]'), 'e')
      .replaceAll(RegExp(r'[îï]'), 'i')
      .replaceAll(RegExp(r'[ôõ]'), 'o')
      .replaceAll(RegExp(r'[ùûü]'), 'u')
      .replaceAll(RegExp(r'[^a-z0-9 ]'), ' ')
      .replaceAll(RegExp(r' +'), ' ')
      .trim();

  static int _matchByLetter(String s, int count) {
    final patterns = [
      [RegExp(r'\b(a|alpha|option a|reponse a|answer a)\b'), 0],
      [RegExp(r'\b(b|bravo|option b|reponse b|answer b)\b'), 1],
      [RegExp(r'\b(c|charlie|option c|reponse c|answer c)\b'), 2],
      [RegExp(r'\b(d|delta|option d|reponse d|answer d)\b'), 3],
    ];
    for (final p in patterns) {
      final idx = p[1] as int;
      if (idx < count && (p[0] as RegExp).hasMatch(s)) return idx;
    }
    return -1;
  }

  static int _similarity(String a, String b) {
    final wordsA = a.split(' ').where((w) => w.length > 3).toSet();
    final wordsB = b.split(' ').where((w) => w.length > 3).toSet();
    return wordsA.intersection(wordsB).length;
  }
}
