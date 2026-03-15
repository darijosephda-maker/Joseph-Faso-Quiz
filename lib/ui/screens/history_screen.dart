import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../core/storage/quiz_storage.dart';
import '../../core/translations.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});
  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  List<Map<String, dynamic>> history = [];
  bool loading = true;

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    final h = await QuizStorage.getGameHistory();
    if (!mounted) return;
    setState(() { history = h; loading = false; });
  }

  Future<void> _clearHistory() async {
    final lang = Localizations.localeOf(context).languageCode;
    final confirm = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(AppTranslations.t('clearConfirm', lang), style: GoogleFonts.poppins(fontWeight: FontWeight.bold)),
        content: Text(AppTranslations.t('clearBody', lang), style: GoogleFonts.poppins()),
        actions: [
          TextButton(onPressed: () => Navigator.pop(ctx, false),
              child: Text(AppTranslations.t('cancel', lang))),
          ElevatedButton(
            onPressed: () => Navigator.pop(ctx, true),
            style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFFEF2B2D)),
            child: Text(AppTranslations.t('clear', lang), style: const TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
    if (confirm == true) { await QuizStorage.clearHistory(); _load(); }
  }

  Color _color(int percent) {
    if (percent >= 80) return const Color(0xFF009E49);
    if (percent >= 50) return const Color(0xFFFCD116);
    return const Color(0xFFEF2B2D);
  }

  String _date(String iso) {
    try {
      final d = DateTime.parse(iso);
      return '${d.day.toString().padLeft(2,'0')}/${d.month.toString().padLeft(2,'0')}/${d.year}  ${d.hour.toString().padLeft(2,'0')}:${d.minute.toString().padLeft(2,'0')}';
    } catch (_) { return iso; }
  }

  @override
  Widget build(BuildContext context) {
    final lang = Localizations.localeOf(context).languageCode;
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        title: Text(AppTranslations.t('history', lang), style: GoogleFonts.oswald()),
        actions: [
          if (history.isNotEmpty)
            IconButton(
              icon: const Icon(Icons.delete_outline),
              tooltip: AppTranslations.t('clearHistory', lang),
              onPressed: _clearHistory,
            ),
        ],
      ),
      body: loading
          ? const Center(child: CircularProgressIndicator())
          : history.isEmpty
              ? Center(
                  child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Icon(Icons.history, size: 80, color: Colors.grey[300]),
                    const SizedBox(height: 16),
                    Text(AppTranslations.t('noHistoryTitle', lang),
                        style: GoogleFonts.poppins(fontSize: 16, color: Colors.grey[500])),
                    const SizedBox(height: 8),
                    Text(AppTranslations.t('noHistoryBody', lang),
                        style: GoogleFonts.poppins(fontSize: 13, color: Colors.grey[400])),
                  ]),
                )
              : ListView.builder(
                  padding: const EdgeInsets.all(16),
                  itemCount: history.length,
                  itemBuilder: (context, index) {
                    final e = history[index];
                    final percent = e['percent'] as int? ?? 0;
                    final score = e['score'] as int? ?? 0;
                    final total = e['total'] as int? ?? 0;
                    // Afficher le nom du thème traduit
                    final themeKey = e['theme'] as String? ?? '';
                    final themeName = AppTranslations.themeName(themeKey, lang);
                    // Titre niveau traduit si possible
                    final lvNum = e['levelNumber'] as int? ?? 1;
                    final lvTitle = AppTranslations.levelTitle(themeKey, lvNum, lang);
                    final date = e['date'] as String? ?? '';
                    final color = _color(percent);
                    return Card(
                      margin: const EdgeInsets.only(bottom: 10),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                      elevation: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(14),
                        child: Row(
                          children: [
                            Container(
                              width: 54, height: 54,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: color.withOpacity(0.1),
                                border: Border.all(color: color, width: 2.5),
                              ),
                              child: Center(
                                child: Text('$percent%',
                                    style: GoogleFonts.oswald(fontSize: 14, fontWeight: FontWeight.bold, color: color)),
                              ),
                            ),
                            const SizedBox(width: 14),
                            Expanded(
                              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                Text(themeName, style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.black87)),
                                Text(lvTitle, style: GoogleFonts.poppins(fontSize: 12, color: Colors.grey[600])),
                                const SizedBox(height: 4),
                                Text('$score/$total  •  ${_date(date)}',
                                    style: GoogleFonts.poppins(fontSize: 11, color: Colors.grey[500])),
                              ]),
                            ),
                            Text(percent >= 80 ? '🌟' : percent >= 50 ? '👍' : '📚',
                                style: const TextStyle(fontSize: 24)),
                          ],
                        ),
                      ),
                    );
                  },
                ),
    );
  }
}
