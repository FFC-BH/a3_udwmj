import 'package:a3_udwmj/main.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

String url = 'https://api-sistemas-distribuidos-production-0667.up.railway.app';

void sincronize(int seconds) {  
  
  Timer.periodic(Duration(seconds: seconds), (timer) async {

    if(await conect() == 200)
    {
      print(timer.tick);

      
      // Usuários : Sqlite --> Api

      

      // Usuários : Api --> Sqlite


      // Tarefas:

     // final List<Map<String, dynamic>> tsksSqlite = await db_sqlite().getTasksByIdUser(user_Pub.userOn);
     // final List<Map<String, dynamic>> tsksApi = await getTasks();

      // Tarefas : Sqlite --> Api

     // print('tsksSqlite');
     // print(tsksSqlite!.length); 

      // Tarefas : Api --> Sqlite

     // print('tsksApi');
     // print(tsksApi!.length); 
     

    }
    

  });
}


/* 
    try {
      //final data = await fetchDataFromDatabase();
      
      setState(() {
        jsonData = data; // Armazena o JSON retornado na variável
      });
    } catch (e) {
      print('Erro ao carregar os dados: $e');
    }
      */





Future<int> conect() async {
  final response = await http.get(Uri.parse(url));
  return response.statusCode;
}

Future<int> cadUser(email, senha, nome) async {
  final response = await http.post(
    Uri.parse('$url/api/users/signup'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      "email": email,
      "password": senha,
      "nome": nome,
    }),
  );
  print("cadUser: response.body: ");
  print(response.body);
  //mostrarErro(context, mensagem)
  return response.statusCode;

    
}

Future<int> loginUser(email, senha) async {
  final response = await http.post(
    Uri.parse('$url/api/users/login'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      "email": email,
      "password": senha,
    }),
  );

  print("loginUser: response.body: ");
  print(response.body);
  print("loginUser: response.statusCode: ");
  print(response.statusCode);

  // return 200;
  //return int.parse(response.statusCode);
  return response.statusCode;
} //

Future<int> forgotPswrd(email) async {
  final response = await http.post(
    Uri.parse('$url/api/users/forgot-password'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      "email": email,
    }),
  );

  print("loginUser: response.body: ");
  print(response.body);
  print("loginUser: response.statusCode: ");
  print(response.statusCode);

  // return 200;
  //return int.parse(response.statusCode);
  return response.statusCode;
} 

Future<int> deleteUser(uid) async {
  final response = await http.delete(
    Uri.parse('$url/api/users/delete'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      "uid": uid,
    }),
  );
  print("cadUser: response.body: ");
  print(response.body);
  return response.statusCode;  
}


// Tarefas

// Criar (post)

Future<int> cadTask(name, description, dateInitial, dateFinish, time, taskCategory ) async {
    final response = await http.post(Uri.parse('$url/api/tasks'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      "name": name,
      "description": description,
      "date_initial": dateInitial,
      "date_finish": dateFinish,
      "time": time,
      "task_category": taskCategory,
    }),
  );

  print("cadTask: response.body: ");
  print(response.body);

  return response.statusCode;
  // return "$response.statusCode";
}

// Atualizar (put) /tasks/:id


// Deletar (delete) '/tasks/:id'


// Obter pelo ID (get) '/tasks/:id'


// Obter todas (get) '/tasks'
/*
Future<String> getTasks() async {
  final response = await http.get(Uri.parse('$url/api/tasks'));
  print("getTasks: response.body: ");
  print(response.body);
  print("getTasks: response.statusCode: ");
  print(response.statusCode);

  //final String xmlString = response.body;

 //                  print('XML bruto:');
 //                 print(xmlString);
  return response.body;
  //return response.statusCode;
}
*/

Future<List<Map<String, dynamic>>> getTasks() async {
  try {
    // Realiza a requisição HTTP GET
    final response = await http.get(Uri.parse('$url/api/tasks'));

    // Verifica se a resposta foi bem-sucedida
    if (response.statusCode == 200) {
      // Decodifica o JSON
      final data = json.decode(response.body);

      // Verifica se os dados são uma lista de objetos
      if (data is List) {
        return List<Map<String, dynamic>>.from(data);
      } else {
        throw Exception('O formato dos dados não é uma lista.');
      }
    } else {
      throw Exception('Erro ao buscar dados: ${response.statusCode}');
    }
  } catch (e) {
    throw Exception('Erro: $e');
  }
}

/*
import 'dart:isolate';
stopIsolate() async {
    Isolate isolate = await Isolate.spawn(runInfiniteInIsolate, 1);
    // Wait for 5 seconds and then kill the isolate
    await Future.delayed(const Duration(seconds: 3));
    isolate.kill(priority: Isolate.immediate);
    print("Isolate stopped");
}

*/