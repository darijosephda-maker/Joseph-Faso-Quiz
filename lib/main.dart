import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'core/storage/quiz_storage.dart';
import 'core/language.dart';
import 'core/app_theme.dart';
import 'ui/screens/splash_screen.dart';
import 'package:mon_app_quiz/l10n/app_localizations.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await QuizStorage.init();
  final pref = await QuizStorage.getPreferredLanguage();
  AppLanguage.setLocale(Locale(pref, pref == 'en' ? 'US' : 'BF'));
  final dark = await QuizStorage.getDarkMode();
  AppTheme.setDark(dark);
  runApp(const ProviderScope(child: FasoQuizApp()));
}

class FasoQuizApp extends StatefulWidget {
  const FasoQuizApp({super.key});
  @override
  State<FasoQuizApp> createState() => _FasoQuizAppState();
}

class _FasoQuizAppState extends State<FasoQuizApp> {

  static ThemeData _light() => ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        textTheme: GoogleFonts.poppinsTextTheme(),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF009E49),
          primary: const Color(0xFF009E49),
          secondary: const Color(0xFFEF2B2D),
          tertiary: const Color(0xFFFCD116),
          brightness: Brightness.light,
        ),
        scaffoldBackgroundColor: const Color(0xFFF5F5F5),
        cardColor: Colors.white,
        appBarTheme: AppBarTheme(
          titleTextStyle: GoogleFonts.oswald(
              color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
          backgroundColor: const Color(0xFF009E49),
          foregroundColor: Colors.white,
          centerTitle: true,
          elevation: 4,
        ),
      );

  static ThemeData _dark() => ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        textTheme: GoogleFonts.poppinsTextTheme(ThemeData.dark().textTheme),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF009E49),
          primary: const Color(0xFF009E49),
          secondary: const Color(0xFFEF2B2D),
          tertiary: const Color(0xFFFCD116),
          brightness: Brightness.dark,
          surface: const Color(0xFF1E1E1E),
        ),
        scaffoldBackgroundColor: const Color(0xFF121212),
        cardColor: const Color(0xFF1E1E1E),
        appBarTheme: AppBarTheme(
          titleTextStyle: GoogleFonts.oswald(
              color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
          backgroundColor: const Color(0xFF1B5E20),
          foregroundColor: Colors.white,
          centerTitle: true,
          elevation: 4,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<Locale>(
      valueListenable: AppLanguage.locale,
      builder: (ctx, locale, _) {
        return ValueListenableBuilder<ThemeMode>(
          valueListenable: AppTheme.mode,
          builder: (ctx2, themeMode, _) {
            return MaterialApp(
              title: 'DA FASO QUIZ',
              debugShowCheckedModeBanner: false,
              locale: locale,
              theme: _light(),
              darkTheme: _dark(),
              themeMode: themeMode,
              localizationsDelegates: const [
                AppLocalizations.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: const [
                Locale('fr', 'BF'),
                Locale('en', 'US'),
              ],
              home: const SplashScreen(),
            );
          },
        );
      },
    );
  }
}
