import 'package:a3_udwmj/view/home_view.dart';
import 'package:flutter/material.dart';

import 'package:sqlite3/sqlite3.dart' show sqlite3;


void main() {
  runApp(MainApp());

 // print('Using sqlite3 ${sqlite3.version}');

  final db = sqlite3.open('taskify.db');
/*
  db.execute(''' PRAGMA foreign_keys = ON;
                 CREATE TABLE IF NOT EXISTS users 
                    (id_user INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
                     nome VARCHAR NOT NULL, 
                     email VARCHAR NOT NULL, 
                     senha VARCHAR NOT NULL
                     );
                 CREATE TABLE IF NOT EXISTS tasks
                    (id_tsk INTEGER NOT NULL  PRIMARY KEY AUTOINCREMENT,
                     id_userr INTEGER NOT NULL,
                     status_tsk INTEGER NOT NULL,
                     nome_tsk VARCHAR NOT NULL,
                     descricao_tsk TEXT,
                     dt_inicio VARCHAR NOT NULL,
                     dt_fim VARCHAR,
                     FOREING KEY (id_userr) REFERENCES users (id_user)                                         
                     );''');                   
*/

  db.execute('''
          CREATE TABLE user (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            name TEXT NOT NULL,
            email TEXT NOT NULL
          );
          CREATE TABLE task (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            userId INTEGER,
            title TEXT NOT NULL,
            description TEXT,
            dueDate TEXT,
            isCompleted INTEGER NOT NULL,
            FOREIGN KEY (userId) REFERENCES user (id)
          );
          CREATE TABLE reminder (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            taskId INTEGER,
            reminderDate TEXT,
            FOREIGN KEY (taskId) REFERENCES task (id)
          );
            ''');
//ON DELETE CASCADE
//   ON UPDATE NO ACTION
// FOREING KEY (id_user) REFERENCES users(id_user)
// FOREING KEY (id_user) REFERENCES users(id_user)
//CONSTRAINT pk_id_tsk PRIMARY KEY(id_tsk)
 // CONSTRAINT fk_id_tsk FOREING KEY(id_user) REFERENCES users(id_user)                     
//  CONSTRAINT fk_id_tsk FOREING KEY (id_user) REFERENCES users(id_user) 
}

class MainApp extends StatelessWidget {
  //const MainApp({super.key});
  get routes => <String, WidgetBuilder>{
   // LoginPage.tag: (context) => LoginPage(),
    Home.tag: (context) => Home()
  };


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
