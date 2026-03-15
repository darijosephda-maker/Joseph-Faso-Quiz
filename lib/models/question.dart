class Question {
  final String id;
  // Map pour supporter le bilinguisme (ex: title['fr'] ou title['en'])
  final Map<String, String> title;

  // Liste d'options, chaque option est aussi une Map bilingue
  final List<Map<String, String>> options;

  final int correctIndex;

  // Explication historique après la réponse
  final Map<String, String> explanation;

  // Petit encart "Saviez-vous ?" (facultatif)
  final Map<String, String>? didYouKnow;

  // Source ou référence (URL ou texte)
  final String? source;

  // Mots-clés pour filtrage/catégorisation
  final List<String> tags;

  // Date liée à la question (ex: événement) au format ISO ou année
  final String? date;

  Question({
    required this.id,
    required this.title,
    required this.options,
    required this.correctIndex,
    required this.explanation,
    this.didYouKnow,
    this.source,
    this.tags = const [],
    this.date,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'options': options,
      'correctIndex': correctIndex,
      'explanation': explanation,
      'didYouKnow': didYouKnow,
      'source': source,
      'tags': tags,
      'date': date,
    };
  }

  factory Question.fromJson(Map<String, dynamic> m) {
    return Question(
      id: m['id'] as String,
      title: Map<String, String>.from(m['title'] as Map),
      options: List<Map<String, String>>.from(
        (m['options'] as List).map((e) => Map<String, String>.from(e as Map)),
      ),
      correctIndex: m['correctIndex'] as int,
      explanation: Map<String, String>.from(m['explanation'] as Map),
      didYouKnow: m['didYouKnow'] != null
          ? Map<String, String>.from(m['didYouKnow'] as Map)
          : null,
      source: m['source'] as String?,
      tags: m['tags'] != null ? List<String>.from(m['tags'] as List) : const [],
      date: m['date'] as String?,
    );
  }
}
