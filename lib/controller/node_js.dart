import 'dart:ffi';

import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';
//import 'dart:convert';


//import 'package:a3_udwmj/models.dart';


Future <void> conects() async {
  final response = await http.get(
    Uri.parse('https://api-sistemas-distribuidos-production.up.railway.app/'));
   

  print("response.statusCode: ");
  print(response.statusCode);

}

//Future <Usuarioo>

Future<int> cadUser(String email, String senha, String nome) async {
  final response = await http.post(
    Uri.parse('https://api-sistemas-distribuidos-production.up.railway.app/api/users/signup'),
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
