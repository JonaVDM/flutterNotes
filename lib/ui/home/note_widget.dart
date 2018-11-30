import 'package:flutter/material.dart';
import 'package:notes_app/models/note.dart';

class NoteWidget extends StatelessWidget {
  final Note _note;

  NoteWidget(this._note);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 168.0,
      margin: EdgeInsets.only(
        left: 16.0,
        right: 16.0,
        top: 7.0,
      ),
      decoration: BoxDecoration(
        color: _note.color,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Container(
        margin: new EdgeInsets.all(16.0),
        constraints: new BoxConstraints.expand(),
        child: Column(
          children: <Widget>[
            Text(
              _note.title,
              style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(_note.content,
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
