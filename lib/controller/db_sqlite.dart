/*
CRUD
*/

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart'
    show ConflictAlgorithm, Database, getDatabasesPath, openDatabase;

// return await openDatabase('/home/fabiano/Documentos/Una/S2-2024/UDWMJ/Flutter/trabalho_a3/a3_udwmj/taskify.db',

// join(...) = .../a3_udwmj/.dart_tool/sqflite_common_ffi/databases/taskify.db

class db_sqlite {
  Future<Database> openMyDatabase() async {
    return await openDatabase(join(await getDatabasesPath(), 'taskify.db'),
        version: 1, onCreate: (db, version) async {
      return db.execute('''
            PRAGMA foreign_keys = ON;
            CREATE TABLE IF NOT EXISTS usuario (
              id INTEGER PRIMARY KEY AUTOINCREMENT,
              apiId TEXT,
              nome TEXT NOT NULL,
              email TEXT NOT NULL,
              senha TEXT NOT NULL
            );
            CREATE TABLE IF NOT EXISTS tarefa (
              id INTEGER PRIMARY KEY AUTOINCREMENT,
              usuarioId INTEGER,
              apiId TEXT,
              titulo TEXT NOT NULL,
              descricao TEXT,
              data_inicial TEXT,
              data_final TEXT,
              time TEXT,
              categoria TEXT,
              status TEXT,
              FOREIGN KEY (usuarioId) REFERENCES usuario (id) ON DELETE CASCADE
           );
            CREATE TABLE IF NOT EXISTS lembrete (
              id INTEGER PRIMARY KEY AUTOINCREMENT,
              tarefaId INTEGER,
              data TEXT,
              FOREIGN KEY (tarefaId) REFERENCES tarefa (id) ON DELETE CASCADE
           );
           ''');
    });
  }

  Future<void> insertUser(String nome, String email, String senha) async {
    final db = await openMyDatabase();

    db.insert(
        'usuario',
        {
          'nome': nome,
          'email': email,
          'senha': senha,
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
/*
  Future<List<Map<String, dynamic>>> getUsers() async {
    final db = await openMyDatabase();
    return await db.query('usuario');
  }

  Future<List<Map<String, dynamic>>> getUserById(int id) async {
    final db = await openMyDatabase();
    return await db.query('usuario',
        columns: ['nome', 'email'], where: 'id = ?', whereArgs: [id]);
  }
*/
  Future<String> searchUserByEmail(String email) async {
    final db = await openMyDatabase();

    List<Map<String, Object?>> usr = (await db.query('usuario',
            columns: ['id', 'senha'], where: 'email = ?', whereArgs: [email])); // as Future<List<Map<String, Object?>>>;

    var senhaRet = usr.firstWhere(
      (mapa) => mapa.containsKey('senha'),
      orElse: () => {},
    );

    Object? valor = senhaRet['senha'];
    
    return valor?.toString() ?? '';
  }
  
  

  // CRUD para Tarefas

  Future<void> insertTask(int usuarioId, String titulo, String descricao, String dataInicial, String dataFinal, String categoria, String status) async {
    
    final db = await openMyDatabase();

    await db.insert(
        'tarefa',
        {
          'usuarioId': usuarioId,
          'titulo': titulo,
          'descricao': descricao,
          'time': DateTime.now().toString(),
          'data_inicial': dataInicial,
          'data_final': dataFinal,
          'categoria': categoria,
          'status': status,
        },
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  Future<void> deleteTask(int id) async {
    final db = await openMyDatabase();

    db.delete('tarefa', where: 'id = ?', whereArgs: [id]);
  }

  Future<void> updateTask(int id, int usuarioId, String titulo, String descricao,
      String dataInicial, String dataFinal, String categoria, String status) async {
    final db = await openMyDatabase();
    print("sqlite update:");
    print(
    db.update(
        'tarefa',
        {
          'usuarioId': usuarioId,
          'titulo': titulo,
          'descricao': descricao,
          'data_inicial': dataInicial,
          'data_final': dataFinal,
          'categoria': categoria,
          'status': status,
        },
        where: 'id = ?',
        whereArgs: [id]
    )//;
    );


  }

  Future<List<Map<String, dynamic>>> getTasksByIdUser(int usuarioId) async {
    final db = await openMyDatabase();
    return await db.query('tarefa',
        columns: ['id', 'titulo', 'descricao', 'data_inicial', 'data_final', 'categoria', 'status'],
        where: 'usuarioId = ?',
        whereArgs: [usuarioId]);
  }

  Future<Map<String, Object?>> getTaskByIdTask(int id) async {
    final db = await openMyDatabase();

    List<Map<String, Object?>> tsk = await db.query('tarefa',
        columns: ['id', 'usuarioId', 'titulo', 'descricao', 'data_inicial', 'data_final', 'categoria', 'status'],
        where: 'id = ?',
        whereArgs: [id]);
 
    return tsk.firstWhere(
      (mapa) => mapa.containsKey('id'),
      orElse: () => {},
    );
 
  }

}
