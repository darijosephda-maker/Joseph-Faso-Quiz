import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../core/storage/quiz_storage.dart';
import '../../models/question.dart';
import 'add_question_screen.dart';
import '../../core/translations.dart';

class ManageQuestionsScreen extends StatefulWidget {
  final String themeName;

  const ManageQuestionsScreen({super.key, required this.themeName});

  @override
  State<ManageQuestionsScreen> createState() => _ManageQuestionsScreenState();
}

class _ManageQuestionsScreenState extends State<ManageQuestionsScreen> {
  List<Question> items = [];

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    final raw = await QuizStorage.getCustomQuestions(widget.themeName);
    setState(() => items = raw.map((m) => Question.fromJson(m)).toList());
  }

  Future<void> _delete(String id) async {
    await QuizStorage.deleteCustomQuestion(widget.themeName, id);
    await _load();
  }

  Future<void> _add() async {
    final res = await Navigator.push<Question?>(
      context,
      MaterialPageRoute(
        builder: (c) => AddQuestionScreen(themeName: widget.themeName),
      ),
    );
    if (res != null) await _load();
  }

  @override
  Widget build(BuildContext context) {
    final lang = Localizations.localeOf(context).languageCode;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${lang == 'en' ? 'Manage Questions' : 'Gérer les questions'} - ${widget.themeName}',
          style: GoogleFonts.oswald(),
        ),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(12),
        itemCount: items.length,
        separatorBuilder: (_, __) => const Divider(),
        itemBuilder: (context, i) {
          final q = items[i];
          return ListTile(
            title: Text(
              q.title['fr'] ?? q.title.values.first,
              style: GoogleFonts.poppins(),
            ),
            subtitle: Text(
              '${lang == 'en' ? 'ID' : 'ID'}: ${q.id} • ${lang == 'en' ? 'Tags' : 'Tags'}: ${q.tags.join(', ')}',
              style: GoogleFonts.poppins(fontSize: 12),
            ),
            trailing: IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () => _delete(q.id),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _add,
        child: const Icon(Icons.add),
      ),
    );
  }
}
