import 'package:flutter/material.dart';
import 'package:notes_app/models/note.dart';

class NewNoteWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void _close() {
      Navigator.pop(context);
    }

    void _save() {
      _close();
    }

    TextStyle _titleStyle = TextStyle(
      fontSize: 32.0,
      color: Colors.black
    );

    TextStyle _textStyle = TextStyle(
      fontSize: 18.0,
      color: Colors.black
    );

    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            TextField(
              style: _titleStyle,
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.all(5.0),
                hintText: 'Title',
              ),
            ),

            TextField(
              style: _textStyle,
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(
                  top: 20.0,
                  left: 10.0,
                  right: 10.0,
                ),
                hintText: 'Message to be reminded of',
              ),
              maxLines: 1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _save,
        child: Icon(Icons.check),
      ),
    );
  }
}
