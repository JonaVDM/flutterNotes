import 'package:flutter/material.dart';
import 'package:notes_app/ui/home/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'JANA',
      theme: ThemeData(
        // primarySwatch: Colors.blueGrey,
        brightness: Brightness.dark,
        primaryColor: Colors.deepPurple,
        accentColor: Colors.deepPurple,
      ),
      home: HomePage(),
    );
  }
}
