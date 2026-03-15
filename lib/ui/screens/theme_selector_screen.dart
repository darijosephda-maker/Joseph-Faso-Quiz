import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'level_selector_screen.dart';
import 'manage_questions_screen.dart';
import '../../data/quiz_data.dart';
import '../../core/translations.dart';
import 'settings_screen.dart';
import 'history_screen.dart';

class ThemeSelectorScreen extends StatelessWidget {
  const ThemeSelectorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final lang = Localizations.localeOf(context).languageCode;

    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        title: Text(AppTranslations.t('selectTheme', lang),
            style: GoogleFonts.oswald()),
        actions: [
          IconButton(
            icon: const Icon(Icons.history),
            tooltip: AppTranslations.t('history', lang),
            onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (_) => const HistoryScreen())),
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (_) => const SettingsScreen())),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            margin: const EdgeInsets.fromLTRB(16, 16, 16, 8),
            padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 20),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [Color(0xFF009E49), Color(0xFF007A36)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    color: const Color(0xFF009E49).withOpacity(0.35),
                    blurRadius: 14,
                    offset: const Offset(0, 6))
              ],
            ),
            child: Row(
              children: [
                const Text('🇧🇫', style: TextStyle(fontSize: 40)),
                const SizedBox(width: 14),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('JOSEPH FASO QUIZ', maxLines: 1, overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.oswald(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2)),
                      Text(AppTranslations.t('chooseTheme', lang),
                          style: GoogleFonts.poppins(
                              color: Colors.white70, fontSize: 12)),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: GridView.count(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
              crossAxisCount: 2,
              mainAxisSpacing: 14,
              crossAxisSpacing: 14,
              childAspectRatio: 1.05,
              children: allQuizData.keys.map((k) {
                final s = _styleForTheme(k);
                return _buildCard(context, k, s['icon'] as IconData,
                    s['color'] as Color, lang);
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }

  Map<String, Object> _styleForTheme(String k) {
    switch (k) {
      case 'Histoire':
        return {'icon': Icons.history_edu, 'color': const Color(0xFF009E49)};
      case 'Économie':
        return {'icon': Icons.trending_up, 'color': const Color(0xFFE6A817)};
      case 'Citoyenneté':
        return {'icon': Icons.people, 'color': const Color(0xFFEF2B2D)};
      case 'Symboles':
        return {'icon': Icons.star, 'color': Colors.black87};
      case 'Santé':
        return {'icon': Icons.health_and_safety, 'color': Colors.teal};
      case 'Culture':
        return {'icon': Icons.music_note, 'color': Colors.deepPurple};
      case 'Géographie':
        return {'icon': Icons.public, 'color': Colors.indigo};
      case 'Technologie':
        return {'icon': Icons.memory, 'color': Colors.blueGrey};
      case 'Sports':
        return {'icon': Icons.sports_soccer, 'color': Colors.orange};
      case 'Actualité':
        return {'icon': Icons.newspaper, 'color': Colors.redAccent};
      default:
        return {'icon': Icons.book, 'color': Colors.blueGrey};
    }
  }

  Widget _buildCard(BuildContext context, String themeKey, IconData icon,
      Color color, String lang) {
    final name = AppTranslations.themeName(themeKey, lang);
    return Card(
      elevation: 5,
      shadowColor: color.withOpacity(0.25),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      color: Colors.white,
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (_) => LevelSelectorScreen(
                  themeKey: themeKey, levels: allQuizData[themeKey] ?? [])),
        ),
        onLongPress: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (_) => ManageQuestionsScreen(themeName: themeKey)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                  color: color.withOpacity(0.1), shape: BoxShape.circle),
              child: Icon(icon, size: 36, color: color),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(name.toUpperCase(),
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: 11,
                      letterSpacing: 0.5),
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis),
            ),
          ],
        ),
      ),
    );
  }
}
