/*
CRUD
*/

import 'package:a3_udwmj/models.dart';
import 'package:sqlite3/sqlite3.dart' show sqlite3;
import 'package:sqlite3/src/ffi/api.dart';


class db_sqlite{

  final db = sqlite3.open('taskify.db');

  @override
  void criar() async {

    db.execute('''
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
  }

  void insertUser(Usuario user) async {
    
    db.execute('''INSERT INTO usuarios (nome, email)
              VALUES( ${user.nome}, ${user.email});''');
  }



}






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

//ON DELETE CASCADE
//   ON UPDATE NO ACTION
// FOREING KEY (id_user) REFERENCES users(id_user)
// FOREING KEY (id_user) REFERENCES users(id_user)
//CONSTRAINT pk_id_tsk PRIMARY KEY(id_tsk)
 // CONSTRAINT fk_id_tsk FOREING KEY(id_user) REFERENCES users(id_user)                     
//  CONSTRAINT fk_id_tsk FOREING KEY (id_user) REFERENCES users(id_user) 


