import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';
//import 'dart:convert';

//import 'package:a3_udwmj/models.dart';

//class node {

String url = 'https://api-sistemas-distribuidos-production-0667.up.railway.app';

  Future<void> conects() async {
    final response = await http.get(Uri.parse(url));

    //print("response.statusCode: ");
     print(response.statusCode);
  }

//Future <Usuarioo>
// Future <String>

//int Function(String email, String senha, String nome) cadUser = (email, senha, nome) async {

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
   // return "$response.statusCode";
  } // as String Function(String email, String senha, String nome);

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

//}
