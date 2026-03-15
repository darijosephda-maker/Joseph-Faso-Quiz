import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import '../../models/level.dart';
import '../../models/question.dart';
import '../../core/storage/quiz_storage.dart';
import '../../core/translations.dart';
import 'quiz_screen.dart';

class LevelSelectorScreen extends StatefulWidget {
  final String themeKey;      // clé interne (ex: 'Histoire')
  final List<Level> levels;

  const LevelSelectorScreen({super.key, required this.themeKey, required this.levels});

  @override
  State<LevelSelectorScreen> createState() => _LevelSelectorScreenState();
}

class _LevelSelectorScreenState extends State<LevelSelectorScreen>
    with SingleTickerProviderStateMixin {
  List<int> completedLevels = [];
  Map<int, int> bestScores = {};
  bool loading = true;
  late AnimationController _animCtrl;

  @override
  void initState() {
    super.initState();
    _animCtrl = AnimationController(vsync: this, duration: const Duration(milliseconds: 900));
    _load();
  }

  @override
  void dispose() {
    _animCtrl.dispose();
    super.dispose();
  }

  Future<void> _load() async {
    final completed = await QuizStorage.getCompletedLevels(widget.themeKey);
    final scores = <int, int>{};
    for (final lv in widget.levels) {
      scores[lv.number] = await QuizStorage.getBestScore(widget.themeKey, lv.number);
    }
    if (!mounted) return;
    setState(() {
      completedLevels = completed;
      bestScores = scores;
      loading = false;
    });
    _animCtrl.forward();
  }

  bool _isUnlocked(Level level) {
    if (level.number == 1) return true;
    return completedLevels.contains(level.number - 1);
  }

  @override
  Widget build(BuildContext context) {
    final lang = Localizations.localeOf(context).languageCode;
    final themeDisplayName = AppTranslations.themeName(widget.themeKey, lang);

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        title: Text(themeDisplayName.toUpperCase(), style: GoogleFonts.oswald()),
      ),
      body: loading
          ? const Center(child: CircularProgressIndicator())
          : Column(
              children: [
                // ── ANIMATION en haut de la page niveaux ──────────────
                Container(
                  width: double.infinity,
                  color: Colors.transparent,
                  height: 120,
                  child: Lottie.asset(
                    'assets/animations/success.json',
                    controller: _animCtrl,
                    onLoaded: (comp) {
                      _animCtrl.duration = comp.duration;
                      _animCtrl.repeat();
                    },
                    fit: BoxFit.contain,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    lang == 'en'
                        ? 'Choose your level to play!'
                        : 'Choisis ton niveau pour jouer !',
                    style: GoogleFonts.poppins(fontSize: 13, color: Colors.grey[600]),
                  ),
                ),
                // ── LISTE DES NIVEAUX ─────────────────────────────────
                Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                    itemCount: widget.levels.length,
                    itemBuilder: (context, index) {
                      final level = widget.levels[index];
                      final unlocked = _isUnlocked(level);
                      final completed = completedLevels.contains(level.number);
                      final best = bestScores[level.number] ?? 0;
                      final total = level.questions.length;
                      // Titre traduit du niveau
                      final lvTitle = AppTranslations.levelTitle(widget.themeKey, level.number, lang);

                      return _buildLevelCard(
                        context: context,
                        lang: lang,
                        level: level,
                        unlocked: unlocked,
                        completed: completed,
                        best: best,
                        total: total,
                        lvTitle: lvTitle,
                      );
                    },
                  ),
                ),
              ],
            ),
    );
  }

  Widget _buildLevelCard({
    required BuildContext context,
    required String lang,
    required Level level,
    required bool unlocked,
    required bool completed,
    required int best,
    required int total,
    required String lvTitle,
  }) {
    final percent = total > 0 ? (best / total * 100).round() : 0;
    final passed = best >= 7; // 7/10 requis pour valider

    return Card(
      margin: const EdgeInsets.only(bottom: 14),
      elevation: unlocked ? 4 : 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(
          color: completed && passed
              ? const Color(0xFF009E49)
              : unlocked
                  ? Colors.grey.shade300
                  : Colors.grey.shade200,
          width: (completed && passed) ? 2 : 1,
        ),
      ),
      color: unlocked ? Colors.white : Colors.grey[100],
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: !unlocked
            ? () => _showLockedMessage(context, lang)
            : () async {
                final raw = await QuizStorage.getCustomQuestions(widget.themeKey);
                final customForLevel = raw
                    .where((m) => (m['level'] ?? 1) == level.number)
                    .map((m) => Question.fromJson(m))
                    .toList();
                final merged = Level(
                  number: level.number,
                  title: level.title,
                  isLocked: !unlocked,
                  questions: [...level.questions, ...customForLevel],
                );
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => QuizScreen(level: merged, themeKey: widget.themeKey),
                  ),
                );
                _load();
              },
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                children: [
                  // Avatar
                  Container(
                    width: 54,
                    height: 54,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: !unlocked
                          ? Colors.grey[300]
                          : (completed && passed)
                              ? const Color(0xFF009E49)
                              : const Color(0xFFEF2B2D),
                    ),
                    child: Center(
                      child: (completed && passed)
                          ? const Icon(Icons.check, color: Colors.white, size: 26)
                          : !unlocked
                              ? const Icon(Icons.lock, color: Colors.white, size: 22)
                              : Text(
                                  '${level.number}',
                                  style: GoogleFonts.oswald(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
                                ),
                    ),
                  ),
                  const SizedBox(width: 14),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${AppTranslations.t('level', lang)} ${level.number} — $lvTitle',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: unlocked ? Colors.black87 : Colors.grey,
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          '$total ${AppTranslations.t('questions', lang)}  •  ${AppTranslations.t('needToPass', lang)}',
                          style: GoogleFonts.poppins(fontSize: 11, color: Colors.grey[500]),
                        ),
                        if (completed) ...[
                          const SizedBox(height: 2),
                          Text(
                            '${AppTranslations.t('bestScore', lang)} : $best/$total ($percent%)  ${passed ? '✅' : '❌'}',
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              color: passed ? const Color(0xFF009E49) : const Color(0xFFEF2B2D),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ],
                    ),
                  ),
                  Icon(
                    !unlocked
                        ? Icons.lock_outline
                        : (completed && passed)
                            ? Icons.check_circle
                            : Icons.play_circle_fill,
                    color: !unlocked
                        ? Colors.grey[400]
                        : (completed && passed)
                            ? const Color(0xFF009E49)
                            : const Color(0xFFEF2B2D),
                    size: 32,
                  ),
                ],
              ),
              if (completed && total > 0) ...[
                const SizedBox(height: 10),
                ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: LinearProgressIndicator(
                    value: best / total,
                    backgroundColor: Colors.grey[200],
                    valueColor: AlwaysStoppedAnimation<Color>(
                      passed ? const Color(0xFF009E49) : const Color(0xFFEF2B2D),
                    ),
                    minHeight: 6,
                  ),
                ),
              ],
              if (!unlocked) ...[
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  decoration: BoxDecoration(color: Colors.grey[200], borderRadius: BorderRadius.circular(8)),
                  child: Text(
                    '${AppTranslations.t('locked', lang)} ${level.number - 1} ${AppTranslations.t('lockedSuffix', lang)}',
                    style: GoogleFonts.poppins(fontSize: 11, color: Colors.grey[600]),
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }

  void _showLockedMessage(BuildContext context, String lang) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(AppTranslations.t('lockedMsg', lang), style: GoogleFonts.poppins(color: Colors.white)),
      backgroundColor: const Color(0xFFEF2B2D),
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    ));
  }
}
