import 'package:flutter/material.dart';
import 'package:notes_app/ui/home/note_widget.dart';
import 'package:notes_app/models/note.dart';

class NotesViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: notes.map((_note) => NoteWidget(_note)).toList(),
    );
  }
}
