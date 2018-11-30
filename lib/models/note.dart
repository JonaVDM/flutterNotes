import 'package:flutter/material.dart';

class Note {
  final int id;
  String title;
  String content;
  Color color;

  Note(this.id, this.title, this.content, this.color);
}

final List<Note> notes = [
  Note(
    1,
    'Test node',
    'This is a test note',
    Colors.amber
  ),
];
