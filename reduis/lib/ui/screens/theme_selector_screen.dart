import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart'; // Pour ton animation
import 'package:google_fonts/google_fonts.dart'; // Pour le style Oswald
import 'level_selector_screen.dart';
import 'manage_questions_screen.dart';
import '../../data/quiz_data.dart';
import 'package:mon_app_quiz/l10n/app_localizations.dart';
import 'settings_screen.dart';

class ThemeSelectorScreen extends StatelessWidget {
  const ThemeSelectorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppLocalizations.of(context)?.themeSelectorTitle ??
              'SÉLECTIONNER UN THÈME',
          style: GoogleFonts.oswald(),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const SettingsScreen()),
              );
            },
          ),
        ],
      ),
      body: Column(
        children: [
          // 1. On intègre ton animation "successfully" en haut
          const SizedBox(height: 10),
          Lottie.asset(
            'assets/animations/success.json',
            height: 120,
            repeat: true,
          ),

          // 2. Grille dynamique basée sur `allQuizData`
          Expanded(
            child: GridView.count(
              padding: const EdgeInsets.all(20),
              crossAxisCount: 2,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
              children: allQuizData.keys.map((theme) {
                final style = _styleForTheme(theme);
                return _buildThemeCard(
                  context,
                  theme,
                  style['icon'] as IconData,
                  style['color'] as Color,
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }

  // Petite fonction pour associer icônes et couleurs par thème, extensible
  Map<String, Object> _styleForTheme(String title) {
    switch (title) {
      case 'Histoire':
        return {'icon': Icons.history_edu, 'color': const Color(0xFF009E49)};
      case 'Économie':
        return {'icon': Icons.trending_up, 'color': const Color(0xFFFCD116)};
      case 'Citoyenneté':
        return {'icon': Icons.people, 'color': const Color(0xFFEF2B2D)};
      case 'Symboles':
        return {'icon': Icons.star, 'color': Colors.black};
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

  Widget _buildThemeCard(
    BuildContext context,
    String title,
    IconData icon,
    Color color,
  ) {
    return Card(
      elevation: 8, // Un peu plus d'ombre pour le relief
      shadowColor: color.withOpacity(0.3),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: InkWell(
        borderRadius: BorderRadius.circular(20),

        onTap: () {
          // On récupère les niveaux correspondants au thème cliqué
          final selectedLevels = allQuizData[title] ?? [];

          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  LevelSelectorScreen(themeName: title, levels: selectedLevels),
            ),
          );
        },
        onLongPress: () {
          // Ouvrir le gestionnaire de questions personnalisées
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ManageQuestionsScreen(themeName: title),
            ),
          );
        },

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Petit effet : un cercle de couleur derrière l'icône
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: color.withOpacity(0.1),
                shape: BoxShape.circle,
              ),
              child: Icon(icon, size: 40, color: color),
            ),
            const SizedBox(height: 12),
            Text(
              title.toUpperCase(),
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
