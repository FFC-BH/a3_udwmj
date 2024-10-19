/*
CRUD
*/

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart' show ConflictAlgorithm, Database, getDatabasesPath, openDatabase;

// return await openDatabase('/home/fabiano/Documentos/Una/S2-2024/UDWMJ/Flutter/trabalho_a3/a3_udwmj/taskify.db', 

// join(...) = .../a3_udwmj/.dart_tool/sqflite_common_ffi/databases/taskify.db

class db_sqlite{
  
  Future<Database> openMyDatabase() async {
    return await openDatabase(join(await getDatabasesPath(), 'taskify.db'),
                              version: 1, 
                              onCreate: (db, version) async {
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

  Future<void> deleteUser(int id) async {
    
    final db = await openMyDatabase();
    
    db.delete('usuario', where: 'id = ?', whereArgs: [id]);
                
  }

  Future<void> updateUser(int id, String nome, String email) async {
    
    final db = await openMyDatabase();
    
    db.update(
        'usuario',
        {
          'nome': nome,
          'email': email,          
        },
        where: 'id = ?',
        whereArgs: [id]);
  }

  Future<List<Map<String, dynamic>>> getUsers() async {
    final db = await openMyDatabase();
    return await db.query('usuario');
  }
   
  Future<List<Map<String, dynamic>>> getUserById(int id) async {
    final db = await openMyDatabase();
    return await db.query('usuario', 
                      columns: ['nome', 'email'],
                      where: 'id = ?',
                      whereArgs: [id]); 
  }




} 


