import 'package:flutter/material.dart';
import 'package:notes_app/ui/home/notes_view_widget.dart';
import 'package:notes_app/ui/new/new_note_widget.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  void _newNote() {
    Navigator.push(context, MaterialPageRoute<void>(
      builder: (BuildContext context) {
        return NewNoteWidget();
      }
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Super Fancy Notes App'),
      ),
      backgroundColor: Colors.yellow,
      floatingActionButton: FloatingActionButton(
        onPressed: _newNote,
        tooltip: 'New note',
        child: Icon(Icons.add),
        backgroundColor: Colors.green,
      ),
      body: NotesViewWidget(),
    );
  }
}
