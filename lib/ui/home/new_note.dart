import 'package:flutter/material.dart';
import 'package:notes_app/ui/new/new_note_widget.dart';

class NewNote extends StatefulWidget {
  final VoidCallback callback;

  NewNote(this.callback);

  @override
  _NewNoteState createState() => _NewNoteState();
}

class _NewNoteState extends State<NewNote> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute<void>(
          builder: (BuildContext context) {
            return NewNoteWidget(widget.callback);
          },
        ));
      },
    );
  }
}
