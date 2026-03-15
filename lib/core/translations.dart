/// Toutes les traductions de l'application en un seul endroit.
/// Utiliser : AppTranslations.t('clé', lang)
class AppTranslations {
  // ── Noms des thèmes ────────────────────────────────────────────────────────
  static const Map<String, Map<String, String>> themeNames = {
    'Histoire':     {'fr': 'Histoire',     'en': 'History'},
    'Économie':     {'fr': 'Économie',     'en': 'Economy'},
    'Citoyenneté':  {'fr': 'Citoyenneté',  'en': 'Citizenship'},
    'Symboles':     {'fr': 'Symboles',     'en': 'Symbols'},
    'Santé':        {'fr': 'Santé',        'en': 'Health'},
    'Culture':      {'fr': 'Culture',      'en': 'Culture'},
    'Géographie':   {'fr': 'Géographie',   'en': 'Geography'},
    'Technologie':  {'fr': 'Technologie',  'en': 'Technology'},
    'Sports':       {'fr': 'Sports',       'en': 'Sports'},
    'Actualité':    {'fr': 'Actualité',    'en': 'News'},
  };

  /// Retourne le nom traduit d'un thème selon la langue.
  static String themeName(String key, String lang) {
    return themeNames[key]?[lang] ?? themeNames[key]?['fr'] ?? key;
  }

  // ── Titres de niveaux ─────────────────────────────────────────────────────
  // Format : "ThemeKey_levelNumber" -> {fr, en}
  static const Map<String, Map<String, String>> levelTitles = {
    // Histoire
    'Histoire_1':    {'fr': 'Les Fondements',      'en': 'The Foundations'},
    'Histoire_2':    {'fr': 'La Révolution',        'en': 'The Revolution'},
    'Histoire_3':    {'fr': 'Mémoire et Avenir',    'en': 'Memory & Future'},
    // Économie
    'Économie_1':    {'fr': 'Les Bases',            'en': 'The Basics'},
    'Économie_2':    {'fr': 'Commerce et Ressources','en': 'Trade & Resources'},
    'Économie_3':    {'fr': 'Développement Durable','en': 'Sustainable Dev.'},
    // Citoyenneté
    'Citoyenneté_1': {'fr': 'Les Institutions',     'en': 'Institutions'},
    'Citoyenneté_2': {'fr': 'Droits et Devoirs',    'en': 'Rights & Duties'},
    'Citoyenneté_3': {'fr': 'Démocratie Avancée',   'en': 'Advanced Democracy'},
    // Symboles
    'Symboles_1':    {'fr': 'Drapeau et Emblèmes',  'en': 'Flag & Emblems'},
    'Symboles_2':    {'fr': 'Patrimoine Culturel',  'en': 'Cultural Heritage'},
    'Symboles_3':    {'fr': 'Traditions et Modernité','en': 'Traditions & Modernity'},
    // Santé
    'Santé_1':       {'fr': 'Santé Publique',       'en': 'Public Health'},
    'Santé_2':       {'fr': 'Maladies et Prévention','en': 'Diseases & Prevention'},
    'Santé_3':       {'fr': 'Santé Globale',        'en': 'Global Health'},
    // Géographie
    'Géographie_1':  {'fr': 'Le Territoire',        'en': 'The Territory'},
    'Géographie_2':  {'fr': 'Ressources Naturelles','en': 'Natural Resources'},
    'Géographie_3':  {'fr': 'Géopolitique',         'en': 'Geopolitics'},
    // Technologie
    'Technologie_1': {'fr': 'Tech Fondamentaux',    'en': 'Tech Fundamentals'},
    'Technologie_2': {'fr': 'Innovation Africaine', 'en': 'African Innovation'},
    'Technologie_3': {'fr': 'Futur Numérique',      'en': 'Digital Future'},
    // Sports
    'Sports_1':      {'fr': 'Règles Fondamentales', 'en': 'Basic Rules'},
    'Sports_2':      {'fr': 'Sport et Société',     'en': 'Sport & Society'},
    'Sports_3':      {'fr': 'Champions et Compétitions','en': 'Champions & Competitions'},
    // Actualité
    'Actualité_1':   {'fr': 'Médias et Information','en': 'Media & Information'},
    'Actualité_2':   {'fr': 'Enjeux Contemporains', 'en': 'Contemporary Issues'},
    'Actualité_3':   {'fr': 'Monde et Perspectives','en': 'World & Perspectives'},
    // Histoire niveau 4
    'Histoire_4':    {'fr': 'Figures Historiques',  'en': 'Historical Figures'},
    // Économie niveau 4
    'Économie_4':    {'fr': 'Finance & Marchés',    'en': 'Finance & Markets'},
    // Citoyenneté niveau 4
    'Citoyenneté_4': {'fr': 'Justice & Liberté',    'en': 'Justice & Freedom'},
    // Symboles niveau 4
    'Symboles_4':    {'fr': 'Identité Nationale',   'en': 'National Identity'},
    // Santé niveau 4
    'Santé_4':       {'fr': 'Médecine Avancée',     'en': 'Advanced Medicine'},
    // Géographie niveau 4
    'Géographie_4':  {'fr': 'Villes & Régions',     'en': 'Cities & Regions'},
    // Technologie niveau 4
    'Technologie_4': {'fr': 'IA & Big Data',        'en': 'AI & Big Data'},
    // Sports niveau 4
    'Sports_4':      {'fr': 'Légendes du Sport',    'en': 'Sports Legends'},
    // Actualité niveau 4
    'Actualité_4':   {'fr': 'Crises & Solutions',   'en': 'Crises & Solutions'},
    // Niveaux 5
    'Histoire_5':    {'fr': 'Maître de l\'Histoire',  'en': 'Master of History'},
    'Économie_5':    {'fr': 'Expert Économique',       'en': 'Economic Expert'},
    'Citoyenneté_5': {'fr': 'Citoyen Modèle',          'en': 'Model Citizen'},
    'Symboles_5':    {'fr': 'Ambassadeur Culturel',    'en': 'Cultural Ambassador'},
    'Santé_5':       {'fr': 'Expert Santé',            'en': 'Health Expert'},
    'Géographie_5':  {'fr': 'Géographe Expert',        'en': 'Expert Geographer'},
    'Technologie_5': {'fr': 'Génie Tech',              'en': 'Tech Genius'},
    'Sports_5':      {'fr': 'Pro du Sport',            'en': 'Sports Pro'},
    'Actualité_5':   {'fr': 'Analyste Politique',      'en': 'Political Analyst'},
    'Culture_5':     {'fr': 'Expert Culturel',         'en': 'Cultural Expert'},
    // Culture niveau 4
    'Culture_4':     {'fr': 'Expressions Artistiques','en': 'Artistic Expressions'},
    // Culture
    'Culture_1':     {'fr': 'Arts et Patrimoine',   'en': 'Arts & Heritage'},
    'Culture_2':     {'fr': 'Sociétés et Traditions','en': 'Societies & Traditions'},
    'Culture_3':     {'fr': 'Culture Mondiale',     'en': 'World Culture'},
  };

  /// Retourne le titre traduit d'un niveau.
  static String levelTitle(String themeKey, int levelNumber, String lang) {
    final key = '${themeKey}_$levelNumber';
    return levelTitles[key]?[lang] ?? levelTitles[key]?['fr'] ?? 'Level $levelNumber';
  }

  // ── Textes UI généraux ────────────────────────────────────────────────────
  static const Map<String, Map<String, String>> ui = {
    'selectTheme':      {'fr': 'CHOISIR UN THÈME',         'en': 'SELECT A THEME'},
    'history':          {'fr': 'Historique',               'en': 'History'},
    'settings':         {'fr': 'Paramètres',               'en': 'Settings'},
    'chooseTheme':      {'fr': '🎓 Choisis un thème pour commencer !',
                         'en': '🎓 Choose a theme to start!'},
    'level':            {'fr': 'Niveau',                   'en': 'Level'},
    'questions':        {'fr': 'questions',                'en': 'questions'},
    'bestScore':        {'fr': '🏆 Meilleur',              'en': '🏆 Best'},
    'locked':           {'fr': '🔒 Terminez le niveau',   'en': '🔒 Complete level'},
    'lockedSuffix':     {'fr': 'pour débloquer',           'en': 'to unlock'},
    'lockedMsg':        {'fr': 'Terminez le niveau précédent pour débloquer celui-ci !',
                         'en': 'Complete the previous level to unlock this one!'},
    'question':         {'fr': 'Question',                 'en': 'Question'},
    'score':            {'fr': 'Score',                    'en': 'Score'},
    'explanation':      {'fr': 'Explication',              'en': 'Explanation'},
    'didYouKnow':       {'fr': 'Saviez-vous ?',            'en': 'Did you know?'},
    'source':           {'fr': 'Source',                   'en': 'Source'},
    'next':             {'fr': 'Suivant',                  'en': 'Next'},
    'previous':         {'fr': 'Précédent',                'en': 'Previous'},
    'finish':           {'fr': '🏁 Terminer',              'en': '🏁 Finish'},
    'continue':         {'fr': 'Continuer',                'en': 'Continue'},
    'result':           {'fr': 'Résultat',                 'en': 'Result'},
    'retry':            {'fr': '🔄 Recommencer',           'en': '🔄 Restart'},
    'nextLevel':        {'fr': '🚀 Niveau Suivant',        'en': '🚀 Next Level'},
    'backToLevels':     {'fr': '← Retour aux niveaux',    'en': '← Back to levels'},
    'share':            {'fr': 'Partager',                 'en': 'Share'},
    'passed':           {'fr': '✅ NIVEAU RÉUSSI !',       'en': '✅ LEVEL PASSED!'},
    'failed':           {'fr': '❌ NIVEAU ÉCHOUÉ',         'en': '❌ LEVEL FAILED'},
    'needToPass':       {'fr': 'Il faut 7/10 pour valider le niveau.',
                         'en': 'You need 7/10 to pass the level.'},
    'unlocked':         {'fr': 'débloqué ! 🎉',            'en': 'unlocked! 🎉'},
    'noHistoryTitle':   {'fr': 'Aucun historique pour l\'instant',
                         'en': 'No history yet'},
    'noHistoryBody':    {'fr': 'Jouez un quiz pour voir votre historique !',
                         'en': 'Play a quiz to see your history!'},
    'clearHistory':     {'fr': 'Effacer l\'historique',   'en': 'Clear history'},
    'clearConfirm':     {'fr': 'Effacer l\'historique ?', 'en': 'Clear history?'},
    'clearBody':        {'fr': 'Cette action est irréversible.',
                         'en': 'This action is irreversible.'},
    'cancel':           {'fr': 'Annuler',                  'en': 'Cancel'},
    'clear':            {'fr': 'Effacer',                  'en': 'Clear'},
    'language':         {'fr': '🌍 Langue',                'en': '🌍 Language'},
    'gameHistory':      {'fr': 'Historique des parties',  'en': 'Game History'},
    'seeHistory':       {'fr': 'Voir toutes vos parties passées',
                         'en': 'See all your past games'},
    'appearance':        {'fr': '🌙 Apparence',          'en': '🌙 Appearance'},
    'darkMode':          {'fr': 'Mode Sombre',           'en': 'Dark Mode'},
    'lightMode':         {'fr': 'Mode Clair',            'en': 'Light Mode'},
    'darkModeSubtitle':  {'fr': 'Activer le thème sombre','en': 'Enable dark theme'},
    'version':          {'fr': 'DA FASO QUIZ v4.0 — OFFLINE','en': 'DA FASO QUIZ v4.0 — OFFLINE'},
    'shareMsg':         {'fr': 'J\'ai obtenu',             'en': 'I scored'},
    'shareMsgOn':       {'fr': 'au quiz',                  'en': 'on'},
    'shareMsgApp':      {'fr': 'sur DA FASO QUIZ !',          'en': 'on DA FASO QUIZ!'},
    'msgPerfect':       {'fr': 'Score parfait ! Incroyable !',
                         'en': 'Perfect score! Incredible!'},
    'msgExcellent':     {'fr': 'Excellent ! Tu maîtrises ce niveau !',
                         'en': 'Excellent! You mastered this level!'},
    'msgGood':          {'fr': 'Bon travail ! Continue comme ça !',
                         'en': 'Good job! Keep it up!'},
    'msgNotBad':        {'fr': 'Pas mal ! La pratique mène à la perfection.',
                         'en': 'Not bad! Practice makes perfect.'},
    'msgFail':          {'fr': 'Ne lâche pas ! Réessaie !',
                         'en': 'Don\'t give up! Try again!'},
  };

  /// Raccourci pour obtenir un texte UI.
  static String t(String key, String lang) {
    return ui[key]?[lang] ?? ui[key]?['fr'] ?? key;
  }
}
