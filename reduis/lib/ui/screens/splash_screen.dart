import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'theme_selector_screen.dart';
import '../../core/storage/quiz_storage.dart';
import '../../core/language.dart';
import 'package:mon_app_quiz/l10n/app_localizations.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final lang = Localizations.localeOf(context).languageCode;
    return Scaffold(
      backgroundColor: const Color(0xFF009E49),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 40),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.star, size: 140, color: const Color(0xFFFCD116)),
                  const SizedBox(height: 24),
                  Text(
                    'JOSEPH APP',
                    style: GoogleFonts.oswald(
                      color: Colors.white,
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Révolution & Savoir',
                    style: GoogleFonts.poppins(
                      color: Colors.white70,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24.0,
                vertical: 20,
              ),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFEF2B2D),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const ThemeSelectorScreen(),
                      ),
                    );
                  },
                  child: Text(
                    AppLocalizations.of(context)?.startAdventure ??
                        (lang == 'en'
                            ? 'START THE ADVENTURE'
                            : 'COMMENCER L\'AVENTURE'),
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),

            // Language selector (offline)
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24.0,
                vertical: 6,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: lang == 'fr'
                          ? Colors.white
                          : Colors.white24,
                      foregroundColor: lang == 'fr'
                          ? Colors.black
                          : Colors.white,
                    ),
                    onPressed: () async {
                      await QuizStorage.setPreferredLanguage('fr');
                      AppLanguage.setLocale(const Locale('fr', 'BF'));
                    },
                    child: const Text('FR'),
                  ),
                  const SizedBox(width: 12),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: lang == 'en'
                          ? Colors.white
                          : Colors.white24,
                      foregroundColor: lang == 'en'
                          ? Colors.black
                          : Colors.white,
                    ),
                    onPressed: () async {
                      await QuizStorage.setPreferredLanguage('en');
                      AppLanguage.setLocale(const Locale('en', 'US'));
                    },
                    child: const Text('EN'),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 12.0, bottom: 8.0),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  AppLocalizations.of(context)?.versionOffline ??
                      'VERSION OFFLINE',
                  style: GoogleFonts.poppins(
                    color: Colors.white24,
                    fontSize: 12,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
