import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../models/level.dart';
import '../../models/question.dart';
import '../../core/storage/quiz_storage.dart';
import 'quiz_screen.dart';
import 'package:mon_app_quiz/l10n/app_localizations.dart';

class LevelSelectorScreen extends StatelessWidget {
  final String themeName;
  final List<Level> levels;

  const LevelSelectorScreen({
    super.key,
    required this.themeName,
    required this.levels,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(themeName.toUpperCase(), style: GoogleFonts.oswald()),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: levels.length,
        itemBuilder: (context, index) {
          final level = levels[index];
          return Card(
            margin: const EdgeInsets.only(bottom: 15),
            elevation: level.isLocked ? 0 : 4,
            color: level.isLocked ? Colors.grey[200] : Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              leading: CircleAvatar(
                backgroundColor: level.isLocked
                    ? Colors.grey
                    : const Color(0xFF009E49),
                child: Text(
                  "${level.number}",
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              title: Text(
                level.title,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  color: level.isLocked ? Colors.grey : Colors.black,
                ),
              ),
              subtitle: Text(
                "${level.questions.length} ${AppLocalizations.of(context)?.questions ?? 'Questions'}",
              ),
              trailing: Icon(
                level.isLocked ? Icons.lock : Icons.play_arrow_rounded,
                color: level.isLocked ? Colors.grey : const Color(0xFFEF2B2D),
              ),
              onTap: level.isLocked
                  ? () => _showLockedMessage(context)
                  : () async {
                      // Récupérer questions personnalisées et les fusionner
                      final raw = await QuizStorage.getCustomQuestions(
                        themeName,
                      );
                      final customForLevel = raw
                          .where((m) => (m['level'] ?? 1) == level.number)
                          .map((m) => Question.fromJson(m))
                          .toList();

                      final merged = Level(
                        number: level.number,
                        title: level.title,
                        isLocked: level.isLocked,
                        questions: [...level.questions, ...customForLevel],
                      );

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              QuizScreen(level: merged, themeName: themeName),
                        ),
                      );
                    },
            ),
          );
        },
      ),
    );
  }

  void _showLockedMessage(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          AppLocalizations.of(context)?.levelLockedMessage ??
              'Terminez le niveau précédent pour débloquer celui-ci !',
        ),
      ),
    );
  }
}
