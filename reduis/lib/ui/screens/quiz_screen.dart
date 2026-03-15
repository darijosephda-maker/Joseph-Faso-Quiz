import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../models/level.dart';
import '../../models/question.dart';
import '../../core/storage/quiz_storage.dart';
import 'result_screen.dart';

class QuizScreen extends StatefulWidget {
  final Level level;
  final String themeName;

  const QuizScreen({super.key, required this.level, required this.themeName});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int current = 0;
  int? selectedIndex;
  bool answered = false;
  int score = 0;

  List<Question> get questions => widget.level.questions;

  void _select(int index) {
    if (answered) return;
    setState(() {
      selectedIndex = index;
      answered = true;
      // compter le score immédiatement
      if (index == questions[current].correctIndex) score++;
    });
  }

  Future<void> _next() async {
    if (current < questions.length - 1) {
      setState(() {
        current++;
        selectedIndex = null;
        answered = false;
      });
    } else {
      // Fin : enregistrer score et naviguer vers l'écran résultat
      await QuizStorage.saveBestScore(
        widget.themeName,
        widget.level.number,
        score,
      );
      await QuizStorage.markLevelCompleted(
        widget.themeName,
        widget.level.number,
      );

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => ResultScreen(
            themeName: widget.themeName,
            level: widget.level,
            score: score,
            total: questions.length,
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final q = questions[current];
    final lang = Localizations.localeOf(context).languageCode;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${widget.level.title} - Question ${current + 1}/${questions.length}',
          style: GoogleFonts.oswald(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 6,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  q.title[lang] ?? q.title['fr'] ?? q.title.values.first,
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 16),

            ...List.generate(q.options.length, (i) {
              final option =
                  q.options[i][lang] ??
                  q.options[i]['fr'] ??
                  q.options[i].values.first;
              final correct = i == q.correctIndex;
              Color? color;
              if (answered) {
                if (i == selectedIndex) {
                  color = correct ? Colors.green[300] : Colors.red[300];
                } else if (correct)
                  color = Colors.green[100];
              }

              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 6.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: color ?? Colors.white,
                    foregroundColor: color != null
                        ? Colors.black
                        : Colors.black,
                    elevation: 2,
                    padding: const EdgeInsets.symmetric(
                      vertical: 14,
                      horizontal: 12,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () => _select(i),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(option, style: GoogleFonts.poppins()),
                  ),
                ),
              );
            }),

            const SizedBox(height: 12),

            if (answered) ...[
              Card(
                color: Colors.grey[50],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        lang == 'en' ? 'Explanation' : 'Explication',
                        style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        q.explanation[lang] ??
                            q.explanation['fr'] ??
                            q.explanation.values.first,
                        style: GoogleFonts.poppins(),
                      ),
                      if (q.didYouKnow != null) ...[
                        const SizedBox(height: 10),
                        Text(
                          lang == 'en' ? 'Did you know?' : 'Saviez-vous ?',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          q.didYouKnow![lang] ??
                              q.didYouKnow!['fr'] ??
                              q.didYouKnow!.values.first,
                          style: GoogleFonts.poppins(color: Colors.grey[700]),
                        ),
                      ],
                      if (q.source != null) ...[
                        const SizedBox(height: 10),
                        Text(
                          '${lang == 'en' ? 'Source' : 'Source'}: ${q.source}',
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
              ),

              const Spacer(),

              ElevatedButton(
                onPressed: _next,
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 14),
                ),
                child: Text(
                  current < questions.length - 1
                      ? (lang == 'en' ? 'Next' : 'Suivant')
                      : (lang == 'en' ? 'Finish' : 'Terminer'),
                  style: GoogleFonts.poppins(fontSize: 16),
                ),
              ),
            ],

            if (!answered) const Spacer(),
          ],
        ),
      ),
    );
  }
}
