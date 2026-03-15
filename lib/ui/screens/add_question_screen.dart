import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uuid/uuid.dart';
import '../../core/storage/quiz_storage.dart';
import '../../models/question.dart';

class AddQuestionScreen extends StatefulWidget {
  final String themeName;

  const AddQuestionScreen({super.key, required this.themeName});

  @override
  State<AddQuestionScreen> createState() => _AddQuestionScreenState();
}

class _AddQuestionScreenState extends State<AddQuestionScreen> {
  final _form = GlobalKey<FormState>();
  final _titleCtrl = TextEditingController();
  final _optCtrls = List.generate(4, (_) => TextEditingController());
  final _expCtrl = TextEditingController();
  final _didCtrl = TextEditingController();
  final _sourceCtrl = TextEditingController();
  final _tagsCtrl = TextEditingController();
  final _levelCtrl = TextEditingController(text: '1');
  int _correct = 0;

  @override
  void dispose() {
    _titleCtrl.dispose();
    for (final c in _optCtrls) {
      c.dispose();
    }
    _expCtrl.dispose();
    _didCtrl.dispose();
    _sourceCtrl.dispose();
    _tagsCtrl.dispose();
    _levelCtrl.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    if (!_form.currentState!.validate()) return;

    final id = const Uuid().v4();
    final q = Question(
      id: id,
      title: {'fr': _titleCtrl.text},
      options: _optCtrls.map((c) => {'fr': c.text}).toList(),
      correctIndex: _correct,
      explanation: {'fr': _expCtrl.text},
      didYouKnow: _didCtrl.text.isNotEmpty ? {'fr': _didCtrl.text} : null,
      source: _sourceCtrl.text.isNotEmpty ? _sourceCtrl.text : null,
      tags: _tagsCtrl.text.isNotEmpty
          ? _tagsCtrl.text.split(',').map((s) => s.trim()).toList()
          : const [],
      date: null,
    );

    final map = q.toJson();
    map['level'] = int.tryParse(_levelCtrl.text) ?? 1;

    await QuizStorage.addCustomQuestion(widget.themeName, map);
    Navigator.pop(context, q);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ajouter une question', style: GoogleFonts.oswald())),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Form(
          key: _form,
          child: ListView(
            children: [
              TextFormField(
                controller: _titleCtrl,
                decoration: const InputDecoration(labelText: 'Question (FR)'),
                validator: (v) => v == null || v.isEmpty ? 'Obligatoire' : null,
              ),
              const SizedBox(height: 8),
              for (int i = 0; i < 4; i++) ...[
                TextFormField(
                  controller: _optCtrls[i],
                  decoration: InputDecoration(labelText: 'Option ${i + 1} (FR)'),
                  validator: (v) => v == null || v.isEmpty ? 'Obligatoire' : null,
                ),
                const SizedBox(height: 8),
              ],
              Row(
                children: [
                  Text('Bonne réponse:', style: GoogleFonts.poppins()),
                  const SizedBox(width: 10),
                  DropdownButton<int>(
                    value: _correct,
                    items: List.generate(4, (i) => DropdownMenuItem(value: i, child: Text('Option ${i + 1}'))),
                    onChanged: (v) => setState(() => _correct = v ?? 0),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              TextFormField(
                controller: _expCtrl,
                decoration: const InputDecoration(labelText: 'Explication (FR)'),
                validator: (v) => v == null || v.isEmpty ? 'Obligatoire' : null,
              ),
              const SizedBox(height: 8),
              TextFormField(controller: _didCtrl, decoration: const InputDecoration(labelText: 'Saviez-vous ? (FR)')),
              const SizedBox(height: 8),
              TextFormField(controller: _sourceCtrl, decoration: const InputDecoration(labelText: 'Source')),
              const SizedBox(height: 8),
              TextFormField(controller: _tagsCtrl, decoration: const InputDecoration(labelText: 'Tags (séparés par , )')),
              const SizedBox(height: 8),
              TextFormField(controller: _levelCtrl, decoration: const InputDecoration(labelText: 'Numéro de niveau'), keyboardType: TextInputType.number),
              const SizedBox(height: 16),
              ElevatedButton(onPressed: _save, child: Text('Enregistrer', style: GoogleFonts.poppins())),
            ],
          ),
        ),
      ),
    );
  }
}
