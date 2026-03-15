import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../core/storage/quiz_storage.dart';
import '../../core/language.dart';
import '../../core/app_theme.dart';
import '../../core/translations.dart';
import 'history_screen.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});
  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  String _lang = 'fr';
  bool _darkMode = false;

  @override
  void initState() {
    super.initState();
    QuizStorage.getPreferredLanguage().then((v) => setState(() => _lang = v));
    QuizStorage.getDarkMode().then((v) => setState(() => _darkMode = v));
    AppTheme.mode.addListener(_onThemeChanged);
  }

  void _onThemeChanged() {
    if (mounted) setState(() => _darkMode = AppTheme.isDark);
  }

  @override
  void dispose() {
    AppTheme.mode.removeListener(_onThemeChanged);
    super.dispose();
  }

  Future<void> _setLang(String code) async {
    await QuizStorage.setPreferredLanguage(code);
    AppLanguage.setLocale(Locale(code, code == 'en' ? 'US' : 'BF'));
    setState(() => _lang = code);
  }

  Future<void> _toggleDark(bool value) async {
    await QuizStorage.setDarkMode(value);
    AppTheme.setDark(value);
    setState(() => _darkMode = value);
  }

  @override
  Widget build(BuildContext context) {
    final lang = Localizations.localeOf(context).languageCode;
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        title: Text(AppTranslations.t('settings', lang),
            style: GoogleFonts.oswald()),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // ── LANGUE ──────────────────────────────────────────
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14)),
              elevation: 2,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(children: [
                      const Icon(Icons.language,
                          color: Color(0xFF009E49), size: 20),
                      const SizedBox(width: 8),
                      Text(AppTranslations.t('language', lang),
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold, fontSize: 15)),
                    ]),
                    const SizedBox(height: 8),
                    RadioListTile<String>(
                      value: 'fr',
                      groupValue: _lang,
                      title:
                          Text('Français 🇫🇷', style: GoogleFonts.poppins()),
                      activeColor: const Color(0xFF009E49),
                      onChanged: (_) => _setLang('fr'),
                    ),
                    RadioListTile<String>(
                      value: 'en',
                      groupValue: _lang,
                      title: Text('English 🇬🇧', style: GoogleFonts.poppins()),
                      activeColor: const Color(0xFF009E49),
                      onChanged: (_) => _setLang('en'),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 16),

            // ── APPARENCE (DARK MODE) ────────────────────────────
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14)),
              elevation: 2,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(children: [
                      Icon(
                        _darkMode ? Icons.dark_mode : Icons.light_mode,
                        color: const Color(0xFF009E49),
                        size: 20,
                      ),
                      const SizedBox(width: 8),
                      Text(AppTranslations.t('appearance', lang),
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold, fontSize: 15)),
                    ]),
                    const SizedBox(height: 8),
                    // Bouton toggle clair/sombre
                    Container(
                      decoration: BoxDecoration(
                        color: isDark
                            ? Colors.grey.shade800
                            : Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: [
                          // MODE CLAIR
                          Expanded(
                            child: GestureDetector(
                              onTap: () => _toggleDark(false),
                              child: AnimatedContainer(
                                duration: const Duration(milliseconds: 250),
                                decoration: BoxDecoration(
                                  color: !_darkMode
                                      ? const Color(0xFF009E49)
                                      : Colors.transparent,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                padding:
                                    const EdgeInsets.symmetric(vertical: 12),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.light_mode,
                                        color: !_darkMode
                                            ? Colors.white
                                            : Colors.grey,
                                        size: 18),
                                    const SizedBox(width: 6),
                                    Text(
                                      AppTranslations.t('lightMode', lang),
                                      style: GoogleFonts.poppins(
                                        color: !_darkMode
                                            ? Colors.white
                                            : Colors.grey,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 13,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          // MODE SOMBRE
                          Expanded(
                            child: GestureDetector(
                              onTap: () => _toggleDark(true),
                              child: AnimatedContainer(
                                duration: const Duration(milliseconds: 250),
                                decoration: BoxDecoration(
                                  color: _darkMode
                                      ? const Color(0xFF1B5E20)
                                      : Colors.transparent,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                padding:
                                    const EdgeInsets.symmetric(vertical: 12),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.dark_mode,
                                        color: _darkMode
                                            ? Colors.white
                                            : Colors.grey,
                                        size: 18),
                                    const SizedBox(width: 6),
                                    Text(
                                      AppTranslations.t('darkMode', lang),
                                      style: GoogleFonts.poppins(
                                        color: _darkMode
                                            ? Colors.white
                                            : Colors.grey,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 13,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 16),

            // ── HISTORIQUE ───────────────────────────────────────
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14)),
              elevation: 2,
              child: ListTile(
                leading:
                    const Icon(Icons.history, color: Color(0xFF009E49)),
                title: Text(AppTranslations.t('gameHistory', lang),
                    style:
                        GoogleFonts.poppins(fontWeight: FontWeight.w600)),
                subtitle: Text(AppTranslations.t('seeHistory', lang),
                    style: GoogleFonts.poppins(fontSize: 12)),
                trailing:
                    const Icon(Icons.arrow_forward_ios, size: 16),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14)),
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => const HistoryScreen())),
              ),
            ),

            const Spacer(),

            // ── VERSION ─────────────────────────────────────────
            Center(
              child: Text(
                AppTranslations.t('version', lang),
                style: GoogleFonts.poppins(
                    fontSize: 12, color: Colors.grey[400]),
              ),
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
