import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share_plus/share_plus.dart';
import 'package:lottie/lottie.dart';
import '../../models/level.dart';
import '../../models/question.dart';
import '../../core/storage/quiz_storage.dart';
import '../../core/translations.dart';
import '../../data/quiz_data.dart';
import 'quiz_screen.dart';

class ResultScreen extends StatefulWidget {
  final String themeKey;
  final Level level;
  final int score;
  final int total;

  const ResultScreen({super.key, required this.themeKey, required this.level, required this.score, required this.total});
  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> with TickerProviderStateMixin {
  int best = 0;
  bool _justUnlockedNext = false;
  Level? _nextLevel;
  late AnimationController _scoreAnim;
  late Animation<double> _scoreScale;

  // Niveau validé si score >= 7 sur 10
  bool get passed => widget.score >= 7;

  @override
  void initState() {
    super.initState();
    _scoreAnim = AnimationController(vsync: this, duration: const Duration(milliseconds: 700));
    _scoreScale = CurvedAnimation(parent: _scoreAnim, curve: Curves.elasticOut);
    _loadData();
    _scoreAnim.forward();
  }

  Future<void> _loadData() async {
    final b = await QuizStorage.getBestScore(widget.themeKey, widget.level.number);
    final completed = await QuizStorage.getCompletedLevels(widget.themeKey);
    final allLevels = allQuizData[widget.themeKey] ?? [];
    Level? next;
    for (final lv in allLevels) {
      if (lv.number == widget.level.number + 1) { next = lv; break; }
    }
    final justUnlocked = passed && completed.contains(widget.level.number) && next != null;
    if (!mounted) return;
    setState(() { best = b; _nextLevel = next; _justUnlockedNext = justUnlocked; });
  }

  @override
  void dispose() { _scoreAnim.dispose(); super.dispose(); }

  void _share(String lang) {
    final percent = (widget.score / widget.total * 100).round();
    final themeName = AppTranslations.themeName(widget.themeKey, lang);
    Share.share('${AppTranslations.t("shareMsg", lang)} ${widget.score}/${widget.total} ($percent%) ${AppTranslations.t("shareMsgOn", lang)} "$themeName" ${AppTranslations.t("shareMsgApp", lang)} 🇧🇫');
  }

  Color get _scoreColor {
    final p = (widget.score / widget.total * 100).round();
    if (p >= 80) return const Color(0xFF009E49);
    if (p >= 50) return const Color(0xFFFCD116);
    return const Color(0xFFEF2B2D);
  }

  String _message(String lang) {
    final p = (widget.score / widget.total * 100).round();
    if (p == 100) return AppTranslations.t('msgPerfect', lang);
    if (p >= 80)  return AppTranslations.t('msgExcellent', lang);
    if (p >= 60)  return AppTranslations.t('msgGood', lang);
    if (p >= 40)  return AppTranslations.t('msgNotBad', lang);
    return AppTranslations.t('msgFail', lang);
  }

  @override
  Widget build(BuildContext context) {
    final lang = Localizations.localeOf(context).languageCode;
    final percent = (widget.score / widget.total * 100).round();
    final color = _scoreColor;
    final themeName = AppTranslations.themeName(widget.themeKey, lang);
    final lvTitle = AppTranslations.levelTitle(widget.themeKey, widget.level.number, lang);

    // ── Couleurs adaptatives dark/light ──────────────────────────
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final cardBg = isDark ? const Color(0xFF1E1E1E) : Colors.white;
    final textMain = isDark ? Colors.white : Colors.black87;
    final textSub = isDark ? Colors.grey[400]! : Colors.grey[600]!;
    final textMid = isDark ? Colors.grey[300]! : Colors.grey[700]!;

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        title: Text(AppTranslations.t('result', lang), style: GoogleFonts.oswald()),
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // ── Animation ────────────────────────────────────────────
              if (passed) ...[
                SizedBox(height: 150,
                    child: Lottie.asset('assets/animations/success.json', repeat: false, fit: BoxFit.contain)),
              ] else ...[
                const SizedBox(height: 16),
                const Text('😔', textAlign: TextAlign.center, style: TextStyle(fontSize: 64)),
                const SizedBox(height: 8),
              ],

              // ── Badge Réussi / Échoué ────────────────────────────────
              Container(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                margin: const EdgeInsets.only(bottom: 12),
                decoration: BoxDecoration(
                  color: passed ? const Color(0xFF009E49) : const Color(0xFFEF2B2D),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Text(
                  passed ? AppTranslations.t('passed', lang) : AppTranslations.t('failed', lang),
                  textAlign: TextAlign.center,
                  style: GoogleFonts.oswald(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),

              // Info règle 5/7
              Text(AppTranslations.t('needToPass', lang),
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(fontSize: 12, color: textSub)),
              const SizedBox(height: 12),

              // ── Score principal ──────────────────────────────────────
              ScaleTransition(
                scale: _scoreScale,
                child: Container(
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    color: cardBg,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [BoxShadow(color: color.withOpacity(0.2), blurRadius: 20, spreadRadius: 2)],
                    border: Border.all(color: color, width: 2),
                  ),
                  child: Column(
                    children: [
                      Text('$themeName — $lvTitle',
                          style: GoogleFonts.poppins(fontSize: 12, color: textSub), textAlign: TextAlign.center),
                      const SizedBox(height: 8),
                      Text('${widget.score}/${widget.total}',
                          style: GoogleFonts.oswald(fontSize: 56, fontWeight: FontWeight.bold, color: color),
                          textAlign: TextAlign.center),
                      const SizedBox(height: 8),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: LinearProgressIndicator(
                          value: widget.score / widget.total,
                          backgroundColor: isDark ? Colors.grey[800] : Colors.grey[200],
                          valueColor: AlwaysStoppedAnimation<Color>(color),
                          minHeight: 12,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text('$percent%', style: GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.bold, color: color), textAlign: TextAlign.center),
                      const SizedBox(height: 6),
                      Text(_message(lang), style: GoogleFonts.poppins(fontSize: 14, color: textMid, fontStyle: FontStyle.italic), textAlign: TextAlign.center),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),

              // ── Bannière niveau débloqué ─────────────────────────────
              if (_justUnlockedNext && _nextLevel != null) ...[
                Container(
                  padding: const EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(colors: [Color(0xFFFCD116), Color(0xFFFFB300)]),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    children: [
                      const Text('🔓', style: TextStyle(fontSize: 26)),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          '${AppTranslations.t("level", lang)} ${_nextLevel!.number} ${AppTranslations.t("unlocked", lang)}',
                          style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.black87),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 12),
              ],

              // ── Meilleur score ───────────────────────────────────────
              Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                elevation: 2, color: cardBg,
                child: Padding(
                  padding: const EdgeInsets.all(14),
                  child: Row(
                    children: [
                      const Icon(Icons.emoji_events, color: Color(0xFFFCD116), size: 28),
                      const SizedBox(width: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(AppTranslations.t('bestScore', lang).replaceAll('🏆 ', ''),
                              style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 13, color: textSub)),
                          Text('$best / ${widget.total}',
                              style: GoogleFonts.oswald(fontSize: 20, color: const Color(0xFF009E49))),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 24),

              // ── Recommencer ──────────────────────────────────────────
              ElevatedButton.icon(
                onPressed: () => Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (_) => QuizScreen(level: widget.level, themeKey: widget.themeKey))),
                icon: const Icon(Icons.replay, color: Colors.white, size: 20),
                label: Text(AppTranslations.t('retry', lang),
                    style: GoogleFonts.poppins(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: passed ? Colors.grey[600] : const Color(0xFFEF2B2D),
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)), elevation: 3,
                ),
              ),

              // ── Niveau Suivant ───────────────────────────────────────
              if (passed && _nextLevel != null) ...[
                const SizedBox(height: 10),
                ElevatedButton.icon(
                  onPressed: () async {
                    final raw = await QuizStorage.getCustomQuestions(widget.themeKey);
                    final customForLevel = raw
                        .where((m) => (m['level'] ?? 1) == _nextLevel!.number)
                        .map((m) => Question.fromJson(m)).toList();
                    if (!context.mounted) return;
                    Navigator.pushReplacement(context, MaterialPageRoute(
                      builder: (_) => QuizScreen(
                        level: Level(number: _nextLevel!.number, title: _nextLevel!.title,
                            isLocked: false, questions: [..._nextLevel!.questions, ...customForLevel]),
                        themeKey: widget.themeKey,
                      ),
                    ));
                  },
                  icon: const Icon(Icons.rocket_launch, color: Colors.white, size: 20),
                  label: Text(AppTranslations.t('nextLevel', lang),
                      style: GoogleFonts.poppins(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15)),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF009E49),
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)), elevation: 4,
                  ),
                ),
              ],
              const SizedBox(height: 10),

              OutlinedButton.icon(
                onPressed: () => _share(lang),
                icon: const Icon(Icons.share),
                label: Text(AppTranslations.t('share', lang), style: GoogleFonts.poppins()),
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 13),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                ),
              ),
              const SizedBox(height: 10),

              OutlinedButton.icon(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.arrow_back),
                label: Text(AppTranslations.t('backToLevels', lang), style: GoogleFonts.poppins()),
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 13),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                ),
              ),
              const SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }
}
