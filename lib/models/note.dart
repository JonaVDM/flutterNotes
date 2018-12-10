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
    'Note#1',
    'This is a test note',
    Colors.green
  ),
  Note(
    2,
    'Note#2',
    'This is just a random note',
    Colors.blue
  ),
  Note(
    3,
    'Note#3',
    'I like pizza',
    Colors.red
  ),
];
