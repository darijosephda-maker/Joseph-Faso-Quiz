import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'core/storage/quiz_storage.dart';
import 'core/language.dart';
import 'ui/screens/splash_screen.dart';
import 'package:mon_app_quiz/l10n/app_localizations.dart';

// IMPORTANT : Si tu as bien généré tes fichiers ARB, décommente la ligne suivante :
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await QuizStorage.init();
  final pref = await QuizStorage.getPreferredLanguage();
  AppLanguage.setLocale(Locale(pref, pref == 'en' ? 'US' : 'BF'));

  runApp(const ProviderScope(child: FasoQuizApp()));
}

class FasoQuizApp extends StatefulWidget {
  const FasoQuizApp({super.key});

  @override
  State<FasoQuizApp> createState() => _FasoQuizAppState();
}

class _FasoQuizAppState extends State<FasoQuizApp> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<Locale>(
      valueListenable: AppLanguage.locale,
      builder: (context, locale, _) {
        return MaterialApp(
          title:
              AppLocalizations.of(context)?.appTitle ?? 'Faso Quiz Révolution',
          debugShowCheckedModeBanner: false,

          locale: locale,

          theme: ThemeData(
            useMaterial3: true,
            textTheme: GoogleFonts.poppinsTextTheme(
              Theme.of(context).textTheme,
            ),
            colorScheme: ColorScheme.fromSeed(
              seedColor: const Color(0xFF009E49),
              primary: const Color(0xFF009E49),
              secondary: const Color(0xFFEF2B2D),
              tertiary: const Color(0xFFFCD116),
            ),
            appBarTheme: AppBarTheme(
              titleTextStyle: GoogleFonts.oswald(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
              backgroundColor: const Color(0xFF009E49),
              foregroundColor: Colors.white,
              centerTitle: true,
              elevation: 4,
            ),
          ),

          // Configuration multilingue
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [Locale('fr', 'BF'), Locale('en', 'US')],

          home: const SplashScreen(),
        );
      },
    );
  }
}
