import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class QuizStorage {
  static SharedPreferences? _prefs;

  static Future<void> init() async {
    _prefs ??= await SharedPreferences.getInstance();
  }

  static String _bestKey(String theme, int level) => 'best_${theme}_$level';
  static String _completedKey(String theme) => 'completed_$theme';

  static Future<void> saveBestScore(String theme, int level, int score) async {
    await init();
    final key = _bestKey(theme, level);
    final current = _prefs!.getInt(key) ?? 0;
    if (score > current) await _prefs!.setInt(key, score);
  }

  static Future<int> getBestScore(String theme, int level) async {
    await init();
    return _prefs!.getInt(_bestKey(theme, level)) ?? 0;
  }

  static Future<void> markLevelCompleted(String theme, int level) async {
    await init();
    final key = _completedKey(theme);
    final list = _prefs!.getStringList(key) ?? <String>[];
    final s = level.toString();
    if (!list.contains(s)) {
      list.add(s);
      await _prefs!.setStringList(key, list);
    }
  }

  static Future<List<int>> getCompletedLevels(String theme) async {
    await init();
    final list = _prefs!.getStringList(_completedKey(theme)) ?? <String>[];
    return list.map((e) => int.tryParse(e) ?? 0).toList();
  }

  // --- Custom questions CRUD (stored as JSON strings list) ---
  static String _customKey(String theme) => 'custom_${theme}_questions';

  static Future<List<Map<String, dynamic>>> getCustomQuestions(
    String theme,
  ) async {
    await init();
    final list = _prefs!.getStringList(_customKey(theme)) ?? <String>[];
    return list.map((s) => json.decode(s) as Map<String, dynamic>).toList();
  }

  static Future<void> saveCustomQuestions(
    String theme,
    List<Map<String, dynamic>> items,
  ) async {
    await init();
    final encoded = items.map((m) => json.encode(m)).toList();
    await _prefs!.setStringList(_customKey(theme), encoded);
  }

  static Future<void> addCustomQuestion(
    String theme,
    Map<String, dynamic> item,
  ) async {
    final list = await getCustomQuestions(theme);
    list.add(item);
    await saveCustomQuestions(theme, list);
  }

  static Future<void> updateCustomQuestion(
    String theme,
    String id,
    Map<String, dynamic> item,
  ) async {
    final list = await getCustomQuestions(theme);
    final idx = list.indexWhere((m) => (m['id'] as String) == id);
    if (idx >= 0) {
      list[idx] = item;
      await saveCustomQuestions(theme, list);
    }
  }

  static Future<void> deleteCustomQuestion(String theme, String id) async {
    final list = await getCustomQuestions(theme);
    list.removeWhere((m) => (m['id'] as String) == id);
    await saveCustomQuestions(theme, list);
  }

  // Preferred language for offline mode
  static const String _langKey = 'preferred_language';

  static Future<void> setPreferredLanguage(String code) async {
    await init();
    await _prefs!.setString(_langKey, code);
  }

  static Future<String> getPreferredLanguage() async {
    await init();
    return _prefs!.getString(_langKey) ?? 'fr';
  }
}
