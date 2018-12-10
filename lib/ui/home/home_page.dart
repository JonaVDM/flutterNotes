import 'package:flutter/material.dart';
import 'package:notes_app/ui/home/notes_view_widget.dart';
import 'package:notes_app/ui/home/new_note.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  void _reload() {
    setState((){});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Just Another Notes App'),
      ),
      floatingActionButton: NewNote(_reload),
      body: NotesViewWidget(),
    );
  }
}
