import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../models/level.dart';
import '../../models/question.dart';
import '../../core/storage/quiz_storage.dart';
import '../../core/translations.dart';
import '../../core/voice_service.dart';
import 'result_screen.dart';

// ════════════════════════════════════════════════════════════════
//  MODÈLE INTERNE — question avec options mélangées
// ════════════════════════════════════════════════════════════════
class _ShuffledQuestion {
  final Question original;
  final List<int> shuffledOrder;
  final int newCorrectIndex;

  const _ShuffledQuestion({
    required this.original,
    required this.shuffledOrder,
    required this.newCorrectIndex,
  });

  static _ShuffledQuestion from(Question q) {
    final order = List<int>.generate(q.options.length, (i) => i);
    order.shuffle(Random());
    return _ShuffledQuestion(
      original: q,
      shuffledOrder: order,
      newCorrectIndex: order.indexOf(q.correctIndex),
    );
  }

  int get optionCount => original.options.length;

  String optionText(int pos, String lang) {
    final orig = original.options[shuffledOrder[pos]];
    return orig[lang] ?? orig['fr'] ?? orig.values.first;
  }

  String questionText(String lang) =>
      original.title[lang] ??
      original.title['fr'] ??
      original.title.values.first;

  String buildFullReadText(String lang) {
    final q = questionText(lang);
    final opts = List.generate(optionCount, (i) {
      final label = String.fromCharCode(65 + i);
      return '$label : ${optionText(i, lang)}';
    }).join(' . ');
    return '$q . $opts';
  }
}

// ════════════════════════════════════════════════════════════════
//  PAINTER — arc circulaire minuterie
// ════════════════════════════════════════════════════════════════
class _TimerArcPainter extends CustomPainter {
  final double progress;
  final Color trackColor;
  final Color arcColor;

  const _TimerArcPainter({
    required this.progress,
    required this.trackColor,
    required this.arcColor,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = (size.shortestSide / 2) - 4;
    canvas.drawCircle(
        center,
        radius,
        Paint()
          ..color = trackColor
          ..style = PaintingStyle.stroke
          ..strokeWidth = 5.5);
    if (progress > 0) {
      canvas.drawArc(
        Rect.fromCircle(center: center, radius: radius),
        -pi / 2,
        2 * pi * progress,
        false,
        Paint()
          ..color = arcColor
          ..style = PaintingStyle.stroke
          ..strokeWidth = 5.5
          ..strokeCap = StrokeCap.round,
      );
    }
  }

  @override
  bool shouldRepaint(_TimerArcPainter old) =>
      old.progress != progress || old.arcColor != arcColor;
}

// ════════════════════════════════════════════════════════════════
//  WIDGETS helpers
// ════════════════════════════════════════════════════════════════

class _CircularTimer extends StatelessWidget {
  final int secondsLeft;
  final int totalSeconds;
  final bool isDark;
  const _CircularTimer({
    required this.secondsLeft,
    required this.totalSeconds,
    required this.isDark,
  });

  Color get _color {
    final r = secondsLeft / totalSeconds;
    if (r > 0.50) return const Color(0xFF009E49);
    if (r > 0.25) return const Color(0xFFFCD116);
    return const Color(0xFFEF2B2D);
  }

  @override
  Widget build(BuildContext context) {
    final progress = (secondsLeft / totalSeconds).clamp(0.0, 1.0);
    return SizedBox(
      width: 52,
      height: 52,
      child: Stack(alignment: Alignment.center, children: [
        CustomPaint(
          size: const Size(52, 52),
          painter: _TimerArcPainter(
            progress: progress,
            trackColor: isDark ? Colors.grey[700]! : Colors.grey[300]!,
            arcColor: _color,
          ),
        ),
        Text('$secondsLeft',
            style: GoogleFonts.oswald(
                fontSize: 16, fontWeight: FontWeight.bold, color: _color)),
      ]),
    );
  }
}

class _StatusBadge extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;
  const _StatusBadge(
      {required this.icon, required this.label, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(20)),
      child: Row(mainAxisSize: MainAxisSize.min, children: [
        Icon(icon, color: Colors.white, size: 14),
        const SizedBox(width: 4),
        Text(label,
            style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 11,
                fontWeight: FontWeight.bold)),
      ]),
    );
  }
}

class _TimerBar extends StatelessWidget {
  final int secsLeft;
  final int totalSecs;
  final bool answered;
  final bool isDark;
  const _TimerBar({
    required this.secsLeft,
    required this.totalSecs,
    required this.answered,
    required this.isDark,
  });

  Color get _color {
    final r = secsLeft / totalSecs;
    if (r > 0.50) return const Color(0xFF009E49);
    if (r > 0.25) return const Color(0xFFFCD116);
    return const Color(0xFFEF2B2D);
  }

  @override
  Widget build(BuildContext context) {
    final val = answered ? 0.0 : (secsLeft / totalSecs).clamp(0.0, 1.0);
    return ClipRRect(
      borderRadius: BorderRadius.circular(4),
      child: TweenAnimationBuilder<double>(
        tween: Tween(end: val),
        duration: const Duration(milliseconds: 900),
        builder: (_, v, __) => LinearProgressIndicator(
          value: v,
          minHeight: 4,
          backgroundColor: isDark ? Colors.grey[800] : Colors.grey[200],
          valueColor: AlwaysStoppedAnimation<Color>(_color),
        ),
      ),
    );
  }
}

// ════════════════════════════════════════════════════════════════
//  TTS BUTTON — petit bouton haut-parleur 🔊
// ════════════════════════════════════════════════════════════════
class _TtsButton extends StatefulWidget {
  final String text;
  final String lang;
  final VoiceService voice;
  final double size;
  final Color? color;

  const _TtsButton({
    required this.text,
    required this.lang,
    required this.voice,
    this.size = 20,
    this.color,
  });

  @override
  State<_TtsButton> createState() => _TtsButtonState();
}

class _TtsButtonState extends State<_TtsButton>
    with SingleTickerProviderStateMixin {
  bool _active = false;
  late AnimationController _pulse;
  late Animation<double> _pulseAnim;

  @override
  void initState() {
    super.initState();
    _pulse = AnimationController(
        vsync: this,
        duration: const Duration(milliseconds: 700),
        lowerBound: 0.85,
        upperBound: 1.15);
    _pulseAnim = CurvedAnimation(parent: _pulse, curve: Curves.easeInOut);
  }

  @override
  void dispose() {
    _pulse.dispose();
    super.dispose();
  }

  Future<void> _toggle() async {
    if (_active) {
      await widget.voice.stopSpeaking();
      _pulse.stop();
      setState(() => _active = false);
    } else {
      setState(() => _active = true);
      _pulse.repeat(reverse: true);
      widget.voice.onTtsDone = () {
        if (mounted) {
          _pulse.stop();
          setState(() => _active = false);
        }
        widget.voice.onTtsDone = null;
      };
      await widget.voice.speak(widget.text, widget.lang);
    }
  }

  @override
  Widget build(BuildContext context) {
    final col = widget.color ?? const Color(0xFF009E49);
    return ScaleTransition(
      scale: _active ? _pulseAnim : const AlwaysStoppedAnimation(1.0),
      child: Material(
        color: _active ? col : col.withOpacity(0.12),
        borderRadius: BorderRadius.circular(20),
        child: InkWell(
          borderRadius: BorderRadius.circular(20),
          onTap: _toggle,
          child: Padding(
            padding: const EdgeInsets.all(6),
            child: Icon(
              _active ? Icons.volume_up_rounded : Icons.volume_up_outlined,
              size: widget.size,
              color: _active ? Colors.white : col,
            ),
          ),
        ),
      ),
    );
  }
}

// ════════════════════════════════════════════════════════════════
//  STT PANEL — panneau de réponse vocale
// ════════════════════════════════════════════════════════════════
class _VoiceAnswerPanel extends StatefulWidget {
  final String lang;
  final bool isDark;
  final VoiceService voice;
  final List<String> options; // textes des options dans l'ordre mélangé
  final bool answered;
  final Function(int) onMatch; // index mélangé trouvé
  final VoidCallback onCancel;

  const _VoiceAnswerPanel({
    required this.lang,
    required this.isDark,
    required this.voice,
    required this.options,
    required this.answered,
    required this.onMatch,
    required this.onCancel,
  });

  @override
  State<_VoiceAnswerPanel> createState() => _VoiceAnswerPanelState();
}

class _VoiceAnswerPanelState extends State<_VoiceAnswerPanel>
    with SingleTickerProviderStateMixin {
  String _transcript = '';
  bool _listening = false;
  String? _hint;
  late AnimationController _ripple;

  @override
  void initState() {
    super.initState();
    _ripple = AnimationController(
        vsync: this,
        duration: const Duration(milliseconds: 900),
        lowerBound: 0.92,
        upperBound: 1.08);
    if (!widget.answered) _startListening();
  }

  @override
  void dispose() {
    _ripple.dispose();
    widget.voice.onSpeechResult = null;
    widget.voice.onSpeechDone = null;
    super.dispose();
  }

  Future<void> _startListening() async {
    if (widget.answered) return;
    setState(() {
      _listening = true;
      _transcript = '';
      _hint = null;
    });
    _ripple.repeat(reverse: true);

    widget.voice.onSpeechResult = (r) {
      if (mounted) setState(() => _transcript = r);
    };
    widget.voice.onSpeechDone = () {
      if (!mounted) return;
      _ripple.stop();
      setState(() => _listening = false);
      final idx = VoiceService.matchSpokenToOption(
          _transcript, widget.options, widget.lang);
      if (idx >= 0) {
        widget.onMatch(idx);
      } else {
        setState(() {
          _hint = widget.lang == 'en'
              ? 'Not recognized. Say A, B, C or D, or a keyword.'
              : 'Non reconnu. Dites A, B, C, D ou un mot-clé.';
        });
      }
    };

    final ok = await widget.voice.startListening(widget.lang);
    if (!ok && mounted) {
      setState(() {
        _listening = false;
        _hint = widget.lang == 'en'
            ? 'Microphone not available.'
            : 'Microphone non disponible.';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final bg = widget.isDark ? const Color(0xFF1E1E1E) : Colors.white;
    final textMain = widget.isDark ? Colors.white : Colors.black87;
    final textSub = widget.isDark ? Colors.grey[400]! : Colors.grey[600]!;

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: bg,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: _listening ? const Color(0xFFEF2B2D) : const Color(0xFF009E49),
          width: 2,
        ),
        boxShadow: [
          BoxShadow(
            color:
                (_listening ? const Color(0xFFEF2B2D) : const Color(0xFF009E49))
                    .withOpacity(0.25),
            blurRadius: 16,
            spreadRadius: 2,
          )
        ],
      ),
      child: Column(children: [
        // Titre
        Text(
          widget.lang == 'en' ? '🎤 Voice Answer' : '🎤 Réponse Vocale',
          style: GoogleFonts.oswald(
              fontSize: 16, fontWeight: FontWeight.bold, color: textMain),
        ),
        const SizedBox(height: 4),
        Text(
          widget.lang == 'en'
              ? 'Say A, B, C or D, or a keyword from the answer'
              : 'Dites A, B, C, D ou un mot-clé de la réponse',
          style: GoogleFonts.poppins(fontSize: 11, color: textSub),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 14),

        // Bouton micro avec ripple
        ScaleTransition(
          scale: _listening ? _ripple : const AlwaysStoppedAnimation(1.0),
          child: GestureDetector(
            onTap: _listening ? null : _startListening,
            child: Container(
              width: 72,
              height: 72,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _listening
                    ? const Color(0xFFEF2B2D)
                    : const Color(0xFF009E49),
                boxShadow: [
                  BoxShadow(
                    color: (_listening
                            ? const Color(0xFFEF2B2D)
                            : const Color(0xFF009E49))
                        .withOpacity(0.45),
                    blurRadius: 20,
                    spreadRadius: 4,
                  )
                ],
              ),
              child: Icon(
                _listening ? Icons.mic_rounded : Icons.mic_none_rounded,
                color: Colors.white,
                size: 34,
              ),
            ),
          ),
        ),

        const SizedBox(height: 10),

        // Transcription en temps réel
        Container(
          constraints: const BoxConstraints(minHeight: 36),
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
          decoration: BoxDecoration(
            color: widget.isDark ? Colors.black26 : Colors.grey[100],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(
            _transcript.isEmpty
                ? (_listening
                    ? (widget.lang == 'en'
                        ? 'Listening...'
                        : 'Écoute en cours...')
                    : (widget.lang == 'en'
                        ? 'Tap the mic to retry'
                        : 'Appuyez sur le micro pour réessayer'))
                : '"$_transcript"',
            style: GoogleFonts.poppins(
              fontSize: 13,
              color: _transcript.isEmpty ? textSub : textMain,
              fontStyle:
                  _transcript.isEmpty ? FontStyle.italic : FontStyle.normal,
            ),
            textAlign: TextAlign.center,
          ),
        ),

        // Hint si non reconnu
        if (_hint != null) ...[
          const SizedBox(height: 8),
          Text(_hint!,
              style: GoogleFonts.poppins(
                  fontSize: 12, color: const Color(0xFFEF2B2D)),
              textAlign: TextAlign.center),
        ],

        const SizedBox(height: 12),

        // Bouton fermer
        TextButton.icon(
          onPressed: () {
            widget.voice.stopListening();
            widget.onCancel();
          },
          icon: const Icon(Icons.close_rounded, size: 16),
          label: Text(widget.lang == 'en' ? 'Close' : 'Fermer',
              style: GoogleFonts.poppins(fontSize: 13)),
          style: TextButton.styleFrom(foregroundColor: textSub),
        ),
      ]),
    );
  }
}

// ════════════════════════════════════════════════════════════════
//  QUIZ SCREEN
// ════════════════════════════════════════════════════════════════
class QuizScreen extends StatefulWidget {
  final Level level;
  final String themeKey;

  const QuizScreen({super.key, required this.level, required this.themeKey});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> with TickerProviderStateMixin {
  late final List<_ShuffledQuestion> _questions;
  int _current = 0;
  late List<int?> _selectedAnswers;
  int _score = 0;

  // Minuterie
  static const int _kTotal = 30;
  int _secsLeft = _kTotal;
  Timer? _ticker;

  // Voix
  final VoiceService _voice = VoiceService();
  bool _showVoicePanel = false;

  // Animations
  late final AnimationController _feedbackCtrl;
  late final Animation<double> _feedbackAnim;
  late final AnimationController _pulseCtrl;
  late final AnimationController _shakeCtrl;
  late final Animation<Offset> _shakeAnim;

  // Getters
  _ShuffledQuestion get _q => _questions[_current];
  bool get _answered => _selectedAnswers[_current] != null;
  bool get _timeUp => _selectedAnswers[_current] == -1;
  bool get _correct =>
      !_timeUp && _selectedAnswers[_current] == _q.newCorrectIndex;

  @override
  void initState() {
    super.initState();
    _questions = widget.level.questions.map(_ShuffledQuestion.from).toList();
    _selectedAnswers = List<int?>.filled(_questions.length, null);

    _feedbackCtrl = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 450));
    _feedbackAnim =
        CurvedAnimation(parent: _feedbackCtrl, curve: Curves.elasticOut);

    _pulseCtrl = AnimationController(
        vsync: this,
        duration: const Duration(milliseconds: 600),
        lowerBound: 0.94,
        upperBound: 1.06);

    _shakeCtrl = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 70));
    _shakeAnim = Tween<Offset>(
            begin: const Offset(-0.025, 0), end: const Offset(0.025, 0))
        .animate(CurvedAnimation(parent: _shakeCtrl, curve: Curves.easeInOut));

    Future.microtask(() => _voice.init().catchError((e) => debugPrint('Voice init error: $e')));
    _startTimer();
  }

  @override
  void dispose() {
    _stopTimer();
    _voice.stopSpeaking(); _voice.stopListening();
    _feedbackCtrl.dispose();
    _pulseCtrl.dispose();
    _shakeCtrl.dispose();
    super.dispose();
  }

  // ── Minuterie ────────────────────────────────────────────────

  void _startTimer() {
    _stopTimer();
    _secsLeft = _kTotal;
    _pulseCtrl.stop();
    _shakeCtrl.stop();

    _ticker = Timer.periodic(const Duration(seconds: 1), (_) {
      if (!mounted || _answered) return;
      setState(() => _secsLeft--);

      if (_secsLeft == 10) _pulseCtrl.repeat(reverse: true);
      if (_secsLeft <= 6 && _secsLeft > 0) {
        HapticFeedback.lightImpact();
        _shakeCtrl.forward(from: 0).then((_) => _shakeCtrl.reverse());
      }
      if (_secsLeft <= 0) {
        HapticFeedback.heavyImpact();
        _stopTimer();
        _onTimeUp();
      }
    });
  }

  void _stopTimer() {
    _ticker?.cancel();
    _ticker = null;
  }

  void _onTimeUp() {
    if (_answered) return;
    _pulseCtrl.stop();
    setState(() {
      _selectedAnswers[_current] = -1;
      _showVoicePanel = false;
    });
    _feedbackCtrl.forward(from: 0);
    _voice.stopListening();
  }

  // ── Sélection ────────────────────────────────────────────────

  void _select(int pos) {
    if (_answered) return;
    _stopTimer();
    _pulseCtrl.stop();
    _voice.stopListening();
    HapticFeedback.selectionClick();
    setState(() {
      _selectedAnswers[_current] = pos;
      _showVoicePanel = false;
      if (pos == _q.newCorrectIndex) {
        _score++;
        HapticFeedback.mediumImpact();
      } else {
        HapticFeedback.heavyImpact();
      }
    });
    _feedbackCtrl.forward(from: 0);
  }

  // ── Navigation ───────────────────────────────────────────────

  void _goNext() {
    _voice.stopSpeaking();
    _voice.stopListening();
    if (_current < _questions.length - 1) {
      setState(() {
        _current++;
        _showVoicePanel = false;
      });
      if (_answered) {
        _secsLeft = 0;
        _feedbackCtrl.forward(from: 0);
      } else {
        _feedbackCtrl.reset();
        _startTimer();
      }
    } else {
      _finish();
    }
  }

  void _goPrev() {
    if (_current > 0) {
      _voice.stopSpeaking();
      _voice.stopListening();
      _stopTimer();
      setState(() {
        _current--;
        _secsLeft = 0;
        _showVoicePanel = false;
      });
      if (_answered)
        _feedbackCtrl.forward(from: 0);
      else
        _feedbackCtrl.reset();
    }
  }

  Future<void> _finish() async {
    _stopTimer();
    _voice.stopSpeaking(); _voice.stopListening();
    final passed = _score >= 7;
    await QuizStorage.saveBestScore(
        widget.themeKey, widget.level.number, _score);
    if (passed) {
      await QuizStorage.markLevelCompleted(
          widget.themeKey, widget.level.number);
    }
    await QuizStorage.saveGameHistory(
      theme: widget.themeKey,
      levelTitle: widget.level.title,
      levelNumber: widget.level.number,
      score: _score,
      total: _questions.length,
    );
    if (!mounted) return;
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (_) => ResultScreen(
          themeKey: widget.themeKey,
          level: widget.level,
          score: _score,
          total: _questions.length,
        ),
      ),
    );
  }

  // ════════════════════════════════════════════════════════════
  //  BUILD
  // ════════════════════════════════════════════════════════════

  @override
  Widget build(BuildContext context) {
    final lang = Localizations.localeOf(context).languageCode;
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final q = _q;
    final chosen = _selectedAnswers[_current];
    final progress = (_current + 1) / _questions.length;
    final lvTitle =
        AppTranslations.levelTitle(widget.themeKey, widget.level.number, lang);

    final cardBg = isDark ? const Color(0xFF1E1E1E) : Colors.white;
    final textMain = isDark ? Colors.white : Colors.black87;
    final textSub = isDark ? Colors.grey[400]! : Colors.grey[600]!;
    final optDefault = isDark ? const Color(0xFF2A2A2A) : Colors.white;
    final optBorder = isDark ? Colors.grey[700]! : Colors.grey.shade300;
    final dykBg = isDark ? const Color(0xFF2C2600) : const Color(0xFFFFF8E1);

    // Textes des options pour le matcher vocal
    final optionTexts =
        List.generate(q.optionCount, (i) => q.optionText(i, lang));

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        title: Text(lvTitle, style: GoogleFonts.oswald()),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(6),
          child: LinearProgressIndicator(
            value: progress,
            backgroundColor: Colors.white24,
            valueColor: const AlwaysStoppedAnimation<Color>(Color(0xFFFCD116)),
            minHeight: 6,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(16, 12, 16, 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // ── HEADER ───────────────────────────────────────────────
              Row(children: [
                Text(
                  '${AppTranslations.t('question', lang)} ${_current + 1}/${_questions.length}',
                  style: GoogleFonts.poppins(
                      fontSize: 12,
                      color: textSub,
                      fontWeight: FontWeight.w500),
                ),
                const Spacer(),
                if (!_answered)
                  SlideTransition(
                    position: _shakeAnim,
                    child: ScaleTransition(
                      scale: _pulseCtrl,
                      child: _CircularTimer(
                        secondsLeft: _secsLeft.clamp(0, _kTotal),
                        totalSeconds: _kTotal,
                        isDark: isDark,
                      ),
                    ),
                  )
                else if (_timeUp)
                  _StatusBadge(
                    icon: Icons.timer_off_rounded,
                    label: lang == 'en' ? 'Time up!' : 'Temps écoulé !',
                    color: const Color(0xFFEF2B2D),
                  )
                else if (_correct)
                  _StatusBadge(
                    icon: Icons.check_circle_rounded,
                    label: lang == 'en' ? 'Correct!' : 'Correct !',
                    color: const Color(0xFF009E49),
                  )
                else
                  _StatusBadge(
                    icon: Icons.cancel_rounded,
                    label: lang == 'en' ? 'Wrong' : 'Raté',
                    color: const Color(0xFFEF2B2D),
                  ),
                const SizedBox(width: 8),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 11, vertical: 5),
                  decoration: BoxDecoration(
                    color: const Color(0xFF009E49),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text('${AppTranslations.t('score', lang)}: $_score',
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 12)),
                ),
              ]),

              // Barre de temps
              const SizedBox(height: 7),
              _TimerBar(
                secsLeft: _secsLeft,
                totalSecs: _kTotal,
                answered: _answered,
                isDark: isDark,
              ),

              const SizedBox(height: 12),

              // ── QUESTION + bouton 🔊 ──────────────────────────────────
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18)),
                elevation: 4,
                color: cardBg,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 16, 10, 16),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          q.questionText(lang),
                          style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: textMain,
                              height: 1.45),
                        ),
                      ),
                      const SizedBox(width: 8),
                      // 🔊 Lire la question complète (question + options)
                      _TtsButton(
                        text: q.buildFullReadText(lang),
                        lang: lang,
                        voice: _voice,
                        size: 22,
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 12),

              // ── OPTIONS mélangées ────────────────────────────────────
              ...List.generate(q.optionCount, (pos) {
                final label = String.fromCharCode(65 + pos);
                final optText = q.optionText(pos, lang);
                final isCorrect = pos == q.newCorrectIndex;
                final isChosen = pos == chosen;

                Color bg = optDefault, border = optBorder, txt = textMain;
                Color badge = isDark ? Colors.grey[700]! : Colors.grey[200]!;
                Color badgeTxt = textSub;
                IconData? icon;

                if (_answered) {
                  if (isChosen && isCorrect) {
                    bg = isDark
                        ? const Color(0xFF1B3A1F)
                        : const Color(0xFFE8F5E9);
                    border = const Color(0xFF009E49);
                    txt = isDark
                        ? const Color(0xFF81C784)
                        : const Color(0xFF1B5E20);
                    badge = const Color(0xFF009E49);
                    badgeTxt = Colors.white;
                    icon = Icons.check_circle_rounded;
                  } else if (isChosen && !isCorrect) {
                    bg = isDark
                        ? const Color(0xFF3A1A1A)
                        : const Color(0xFFFFEBEE);
                    border = const Color(0xFFEF2B2D);
                    txt = isDark
                        ? const Color(0xFFEF9A9A)
                        : const Color(0xFFB71C1C);
                    badge = const Color(0xFFEF2B2D);
                    badgeTxt = Colors.white;
                    icon = Icons.cancel_rounded;
                  } else if (isCorrect) {
                    bg = isDark
                        ? const Color(0xFF1B3A1F)
                        : const Color(0xFFE8F5E9);
                    border = const Color(0xFF009E49);
                    txt = isDark
                        ? const Color(0xFF81C784)
                        : const Color(0xFF1B5E20);
                    badge = const Color(0xFF009E49);
                    badgeTxt = Colors.white;
                    icon = Icons.check_circle_outline_rounded;
                  }
                }

                return Padding(
                  padding: const EdgeInsets.only(bottom: 9),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 280),
                    curve: Curves.easeOut,
                    decoration: BoxDecoration(
                      color: bg,
                      borderRadius: BorderRadius.circular(13),
                      border: Border.all(color: border, width: 1.8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(isDark ? 0.18 : 0.06),
                          blurRadius: 5,
                          offset: const Offset(0, 2),
                        )
                      ],
                    ),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(13),
                      onTap: _answered ? null : () => _select(pos),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(12, 11, 8, 11),
                        child: Row(children: [
                          // Badge lettre A/B/C/D
                          AnimatedContainer(
                            duration: const Duration(milliseconds: 280),
                            width: 28,
                            height: 28,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: badge),
                            child: Center(
                                child: Text(label,
                                    style: GoogleFonts.oswald(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        color: badgeTxt))),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                              child: Text(optText,
                                  style: GoogleFonts.poppins(
                                      color: txt,
                                      fontSize: 13.5,
                                      fontWeight: FontWeight.w500,
                                      height: 1.3))),
                          if (icon != null) ...[
                            const SizedBox(width: 6),
                            Icon(icon, color: border, size: 20),
                          ],
                          const SizedBox(width: 4),
                          // 🔊 Lire cette option
                          _TtsButton(
                            text: '$label : $optText',
                            lang: lang,
                            voice: _voice,
                            size: 17,
                            color: _answered ? border : const Color(0xFF009E49),
                          ),
                        ]),
                      ),
                    ),
                  ),
                );
              }),

              // ── BOUTON RÉPONSE VOCALE 🎤 ─────────────────────────────
              if (!_answered) ...[
                const SizedBox(height: 4),
                Row(children: [
                  const Spacer(),
                  AnimatedSwitcher(
                    duration: const Duration(milliseconds: 300),
                    child: _showVoicePanel
                        ? const SizedBox.shrink()
                        : ElevatedButton.icon(
                            key: const ValueKey('voiceBtn'),
                            onPressed: () {
                              _voice.stopSpeaking();
                              setState(() => _showVoicePanel = true);
                            },
                            icon: const Icon(Icons.mic_rounded,
                                size: 18, color: Colors.white),
                            label: Text(
                              lang == 'en'
                                  ? 'Voice Answer'
                                  : 'Répondre à voix haute',
                              style: GoogleFonts.poppins(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFEF2B2D),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 10),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)),
                            ),
                          ),
                  ),
                  const Spacer(),
                ]),
                const SizedBox(height: 8),
              ],

              // ── PANNEAU VOCAL ────────────────────────────────────────
              AnimatedSize(
                duration: const Duration(milliseconds: 350),
                curve: Curves.easeInOut,
                child: _showVoicePanel && !_answered
                    ? Padding(
                        padding: const EdgeInsets.only(bottom: 12),
                        child: _VoiceAnswerPanel(
                          lang: lang,
                          isDark: isDark,
                          voice: _voice,
                          options: optionTexts,
                          answered: _answered,
                          onMatch: (idx) {
                            setState(() => _showVoicePanel = false);
                            _select(idx);
                          },
                          onCancel: () =>
                              setState(() => _showVoicePanel = false),
                        ),
                      )
                    : const SizedBox.shrink(),
              ),

              // ── EXPLICATION ──────────────────────────────────────────
              if (_answered) ...[
                const SizedBox(height: 6),
                if (_timeUp)
                  Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 14, vertical: 10),
                    decoration: BoxDecoration(
                      color: const Color(0xFFEF2B2D),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(children: [
                      const Icon(Icons.timer_off_rounded,
                          color: Colors.white, size: 18),
                      const SizedBox(width: 8),
                      Expanded(
                          child: Text(
                        lang == 'en'
                            ? "Time's up! Here's the correct answer."
                            : "Temps écoulé ! Voici la bonne réponse.",
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 13),
                      )),
                    ]),
                  ),
                ScaleTransition(
                  scale: _feedbackAnim,
                  child: Card(
                    color: cardBg,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                      side: BorderSide(
                        color: _correct
                            ? const Color(0xFF009E49)
                            : const Color(0xFFEF2B2D),
                        width: 1.6,
                      ),
                    ),
                    elevation: 3,
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(children: [
                            Icon(
                              _correct
                                  ? Icons.lightbulb_rounded
                                  : Icons.info_rounded,
                              color: _correct
                                  ? const Color(0xFF009E49)
                                  : const Color(0xFFEF2B2D),
                              size: 20,
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              child: Text(
                                AppTranslations.t('explanation', lang),
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                    color: textMain),
                              ),
                            ),
                            // 🔊 Lire l'explication
                            _TtsButton(
                              text: q.original.explanation[lang] ??
                                  q.original.explanation['fr'] ??
                                  q.original.explanation.values.first,
                              lang: lang,
                              voice: _voice,
                              size: 18,
                            ),
                          ]),
                          const SizedBox(height: 8),
                          Text(
                            q.original.explanation[lang] ??
                                q.original.explanation['fr'] ??
                                q.original.explanation.values.first,
                            style: GoogleFonts.poppins(
                                fontSize: 14, color: textMain, height: 1.5),
                          ),
                          if (q.original.didYouKnow != null) ...[
                            const SizedBox(height: 12),
                            Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: dykBg,
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                    color: const Color(0xFFFCD116), width: 1),
                              ),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text('💡 ',
                                        style: TextStyle(fontSize: 14)),
                                    Expanded(
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                          Text(
                                              AppTranslations.t(
                                                  'didYouKnow', lang),
                                              style: GoogleFonts.poppins(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 13,
                                                  color: textMain)),
                                          const SizedBox(height: 4),
                                          Text(
                                            q.original.didYouKnow![lang] ??
                                                q.original.didYouKnow!['fr'] ??
                                                q.original.didYouKnow!.values
                                                    .first,
                                            style: GoogleFonts.poppins(
                                                fontSize: 13,
                                                color: textMain,
                                                height: 1.4),
                                          ),
                                        ])),
                                  ]),
                            ),
                          ],
                          if (q.original.source != null) ...[
                            const SizedBox(height: 8),
                            Text(
                              '📚 ${AppTranslations.t('source', lang)} : ${q.original.source}',
                              style: GoogleFonts.poppins(
                                  fontSize: 11, color: textSub),
                            ),
                          ],
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 14),
              ],

              // ── BOUTONS NAVIGATION ───────────────────────────────────
              if (_answered) ...[
                Row(children: [
                  if (_current > 0) ...[
                    Expanded(
                      child: OutlinedButton.icon(
                        onPressed: _goPrev,
                        icon: const Icon(Icons.arrow_back_ios_new_rounded,
                            size: 14),
                        label: Text(AppTranslations.t('previous', lang),
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600)),
                        style: OutlinedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 13),
                          side: const BorderSide(
                              color: Color(0xFF009E49), width: 1.6),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                  ],
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: _goNext,
                      icon: Icon(
                        _current < _questions.length - 1
                            ? Icons.arrow_forward_ios_rounded
                            : Icons.flag_rounded,
                        size: 14,
                        color: Colors.white,
                      ),
                      label: Text(
                        _current < _questions.length - 1
                            ? AppTranslations.t('next', lang)
                            : AppTranslations.t('finish', lang),
                        style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF009E49),
                        padding: const EdgeInsets.symmetric(vertical: 13),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                        elevation: 3,
                      ),
                    ),
                  ),
                ]),
                const SizedBox(height: 20),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
