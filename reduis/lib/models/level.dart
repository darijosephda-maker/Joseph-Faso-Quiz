// lib/models/level.dart
import 'question.dart';

class Level {
  final int number; // Niveau 1, 2, 3...
  final String title; // ex: "Les Bases", "Avancé"
  final List<Question> questions;
  final bool isLocked; // Pour bloquer les niveaux supérieurs

  Level({
    required this.number,
    required this.title,
    required this.questions,
    this.isLocked = true,
  });
}
