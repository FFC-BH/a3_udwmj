import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';
//import 'package:tuple/tuple.dart';

//import 'dart:convert';

//import 'package:a3_udwmj/models.dart';

String url = 'https://api-sistemas-distribuidos-production-0667.up.railway.app';

void sincronize(int seconds) {
  Timer.periodic(Duration(seconds: seconds), (timer) async {

    if(await conect() == 200)
    {


      print(timer.tick);
    }
    

  });
}



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

Future<int> getTasks() async {
  final response = await http.get(Uri.parse('$url/api/tasks'));
  print("getTasks: response.body: ");
  print(response.body);
print("getTasks: response.statusCode: ");
  print(response.statusCode);

  final String xmlString = response.body;

                   print('XML bruto:');
                  print(xmlString);

  return response.statusCode;
}

class DatabaseResult {
  final int sttsCd;
  final List<String> fields;

  DatabaseResult({required this.sttsCd, required this.fields});
}


DatabaseResult processJson(String jsonString) {
  
  final List<dynamic> jsonData = jsonDecode(jsonString);

  if (jsonData.isEmpty) {
    return DatabaseResult(sttsCd: 0, fields: []);
  }

  // Seleciona os quatro primeiros campos de cada objeto no JSON
  final List<String> fields = jsonData.take(4).map((item) {
    return item['campo'].toString();
  }).toList();

  // Retorna o resultado
  return DatabaseResult(sttsCd: jsonData.length, fields: fields);
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