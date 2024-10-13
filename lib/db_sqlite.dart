/*
CRUD
*/
import 'dart:io';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class db_sqlite{

  Future<Database> openMyDatabase() async {
    return await openDatabase(join(databaseFactory.getDatabasesPath() as String, 'myToDoDatabase.db'), 
                              version: 1, 
                              onCreate: (db, version) {
      return db.execute('''
            CREATE TABLE IF NOT EXISTS usuario (
              id INTEGER PRIMARY KEY AUTOINCREMENT,
              nome TEXT NOT NULL,
              email TEXT NOT NULL
            );
            CREATE TABLE IF NOT EXISTS tarefa (
              id INTEGER PRIMARY KEY AUTOINCREMENT,
              usuarioId INTEGER,
              titulo TEXT NOT NULL,
              descricao TEXT,
              data TEXT,
              concluido INTEGER NOT NULL,
              FOREIGN KEY (usuarioId) REFERENCES usuario (id)
            );
            CREATE TABLE IF NOT EXISTS lembrete (
              id INTEGER PRIMARY KEY AUTOINCREMENT,
              tarefaId INTEGER,
              data TEXT,
              FOREIGN KEY (tarefaId) REFERENCES tarefa (id)
           );
           ''');
      //Here we are creating a table named todoList with three columns: id, title, and status.
      //The id column is the primary key and is set to autoincrement.    
      //We use INTEGER for the status column because SQLite does not have a boolean data type.
      //Instead, we use 0 for false and 1 for true.    
    });
  
  }
  
  Future<void> insertUser(String nome, String email) async {
    
    final db = await openMyDatabase();
    
    db.insert(
        'usuario',
        {
          'nome': nome,
          'email': email,          
        },
        conflictAlgorithm: ConflictAlgorithm.replace);
  }




   
} 
