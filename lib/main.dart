import 'package:flutter/material.dart';

//import 'dart:io';

import 'package:sqlite3/sqlite3.dart';

void main() {
  runApp(const MainApp());

  print('Using sqlite3 ${sqlite3.version}');

  final db = sqlite3.open(taskify.db);

  db.execute(''' CREATE TABLE users (id INTEGER NOT NULL PRIMARY KEY, name TEXT NOT NULL);  ''');

}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
