import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../core/storage/quiz_storage.dart';
import '../../core/language.dart';
import 'package:mon_app_quiz/l10n/app_localizations.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  String _lang = 'fr';

  @override
  void initState() {
    super.initState();
    QuizStorage.getPreferredLanguage().then((v) => setState(() => _lang = v));
  }

  Future<void> _setLang(String code) async {
    await QuizStorage.setPreferredLanguage(code);
    AppLanguage.setLocale(Locale(code, code == 'en' ? 'US' : 'BF'));
    setState(() => _lang = code);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppLocalizations.of(context)?.appTitle ?? 'Settings',
          style: GoogleFonts.oswald(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppLocalizations.of(context)?.startAdventure ?? 'Language',
              style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            RadioListTile<String>(
              value: 'fr',
              groupValue: _lang,
              title: const Text('Français'),
              onChanged: (v) => _setLang('fr'),
            ),
            RadioListTile<String>(
              value: 'en',
              groupValue: _lang,
              title: const Text('English'),
              onChanged: (v) => _setLang('en'),
            ),
          ],
        ),
      ),
    );
  }
}
