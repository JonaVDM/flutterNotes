import 'package:flutter/material.dart';
import 'package:notes_app/models/note.dart';

class NewNoteWidget extends StatefulWidget {
  final VoidCallback callback;

  NewNoteWidget(this.callback);

  _NewNoteState createState() => _NewNoteState();
}

class _NewNoteState extends State<NewNoteWidget> {
  TextEditingController _titleController = TextEditingController();
  TextEditingController _textController = TextEditingController();

  void _save() {
    notes.add(Note(5, _titleController.text, _textController.text, Colors.purple));
    Navigator.pop(context);
  }

  @override
  void dispose() {
    super.dispose();
    _titleController.dispose();
    _textController.dispose();
  }

  @override
  Widget build(BuildContext context) {

    TextField _titleField = TextField(
      style: TextStyle(
        fontSize: 32.0,
      ),
      decoration: InputDecoration(
        border: InputBorder.none,
        contentPadding: EdgeInsets.all(5.0),
        hintText: 'Title',
      ),
    );

    TextField _contentField = TextField(
      style: TextStyle(
        fontSize: 18.0,
      ),
      decoration: InputDecoration(
        border: InputBorder.none,
        contentPadding: EdgeInsets.only(
          top: 20.0,
          left: 10.0,
          right: 10.0,
        ),
        hintText: 'Message to be reminded of',
      ),
    );

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.check),
        onPressed: _save,
      ),
      body: Container(
        margin: EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            _titleField,
            _contentField,
          ],
        ),
      ),
    );
  }
}
