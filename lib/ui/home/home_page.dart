import 'package:flutter/material.dart';
import 'package:notes_app/ui/home/note_widget.dart';
import 'package:notes_app/models/note.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My notes app'),
        backgroundColor: Colors.green,
      ),
      backgroundColor: Colors.white54,
      body: Column(
        children: <Widget>[
          NoteWidget(notes[0]),
          NoteWidget(notes[0]),
          NoteWidget(notes[0]),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        tooltip: 'New note',
        child: Icon(
          Icons.add,
        ),
        backgroundColor: Colors.green,
      ),
    );
  }
}
