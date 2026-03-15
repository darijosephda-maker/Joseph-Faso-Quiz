import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mon_app_quiz/l10n/app_localizations.dart';
import 'package:share_plus/share_plus.dart';
import 'package:lottie/lottie.dart';
import '../../models/level.dart';
import '../../core/storage/quiz_storage.dart';
import 'quiz_screen.dart';

class ResultScreen extends StatefulWidget {
  final String themeName;
  final Level level;
  final int score;
  final int total;

  const ResultScreen({
    super.key,
    required this.themeName,
    required this.level,
    required this.score,
    required this.total,
  });

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  int best = 0;

  @override
  void initState() {
    super.initState();
    _loadBest();
  }

  Future<void> _loadBest() async {
    final b = await QuizStorage.getBestScore(
      widget.themeName,
      widget.level.number,
    );
    setState(() => best = b);
  }

  void _share() {
    Share.share(
      'J\'ai obtenu ${widget.score}/${widget.total} au quiz "${widget.themeName}" sur Faso Quiz !',
    );
  }

  void _retry() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) =>
            QuizScreen(level: widget.level, themeName: widget.themeName),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final lang = Localizations.localeOf(context).languageCode;
    final percent = (widget.score / widget.total * 100).round();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppLocalizations.of(context)?.resultTitle ??
              (lang == 'en' ? 'Result' : 'Résultat'),
          style: GoogleFonts.oswald(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 20),
            Text(
              '${widget.score}/${widget.total}',
              style: GoogleFonts.oswald(fontSize: 48),
              textAlign: TextAlign.center,
            ),
            if ((widget.score / widget.total * 100) >= 80) ...[
              const SizedBox(height: 12),
              Center(
                child: Lottie.asset(
                  'assets/animations/success.json',
                  height: 120,
                  repeat: false,
                ),
              ),
            ],
            const SizedBox(height: 8),
            Text(
              '$percent %',
              style: GoogleFonts.poppins(fontSize: 20),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppLocalizations.of(context)?.bestScore ??
                          (lang == 'en' ? 'Best score' : 'Meilleur score'),
                      style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      '$best / ${widget.total}',
                      style: GoogleFonts.poppins(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),

            const Spacer(),

            ElevatedButton.icon(
              onPressed: _share,
              icon: const Icon(Icons.share),
              label: Text(
                AppLocalizations.of(context)?.share ??
                    (lang == 'en' ? 'Share' : 'Partager'),
                style: GoogleFonts.poppins(),
              ),
            ),

            const SizedBox(height: 10),

            ElevatedButton(
              onPressed: _retry,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF009E49),
              ),
              child: Text(
                AppLocalizations.of(context)?.retry ??
                    (lang == 'en' ? 'Retry' : 'Rejouer'),
                style: GoogleFonts.poppins(),
              ),
            ),

            const SizedBox(height: 10),

            OutlinedButton(
              onPressed: () => Navigator.pop(context),
              child: Text(
                AppLocalizations.of(context)?.backToLevels ??
                    (lang == 'en' ? 'Back to levels' : 'Retour aux niveaux'),
                style: GoogleFonts.poppins(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
