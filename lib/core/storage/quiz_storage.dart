import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class QuizStorage {
  static SharedPreferences? _prefs;

  static Future<void> init() async {
    _prefs ??= await SharedPreferences.getInstance();
  }

  // ── SCORES ─────────────────────────────────────────────
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

  // ── HISTORIQUE DES PARTIES ─────────────────────────────
  static const String _historyKey = 'game_history';

  static Future<void> saveGameHistory({
    required String theme,
    required String levelTitle,
    required int levelNumber,
    required int score,
    required int total,
  }) async {
    await init();
    final list = _prefs!.getStringList(_historyKey) ?? <String>[];
    final entry = json.encode({
      'theme': theme,
      'levelTitle': levelTitle,
      'levelNumber': levelNumber,
      'score': score,
      'total': total,
      'percent': (score / total * 100).round(),
      'date': DateTime.now().toIso8601String(),
    });
    list.insert(0, entry); // plus récent en premier
    // garder seulement les 50 dernières parties
    if (list.length > 50) list.removeRange(50, list.length);
    await _prefs!.setStringList(_historyKey, list);
  }

  static Future<List<Map<String, dynamic>>> getGameHistory() async {
    await init();
    final list = _prefs!.getStringList(_historyKey) ?? <String>[];
    return list.map((s) => json.decode(s) as Map<String, dynamic>).toList();
  }

  static Future<void> clearHistory() async {
    await init();
    await _prefs!.remove(_historyKey);
  }

  // ── QUESTIONS PERSONNALISÉES ────────────────────────────
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

  // ── LANGUE ─────────────────────────────────────────────
  static const String _langKey = 'preferred_language';

  static Future<void> setPreferredLanguage(String code) async {
    await init();
    await _prefs!.setString(_langKey, code);
  }

  static Future<String> getPreferredLanguage() async {
    await init();
    return _prefs!.getString(_langKey) ?? 'fr';
  }

  // ── THÈME SOMBRE ────────────────────────────────────────────────────────
  static const String _darkKey = 'dark_mode';

  static Future<void> setDarkMode(bool dark) async {
    await init();
    await _prefs!.setBool(_darkKey, dark);
  }

  static Future<bool> getDarkMode() async {
    await init();
    return _prefs!.getBool(_darkKey) ?? false;
  }
}
