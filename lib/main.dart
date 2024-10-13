import 'package:a3_udwmj/view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:a3_udwmj/db_sqlite.dart';
import 'package:a3_udwmj/models.dart';


Future<void> main() async {
  runApp(MainApp());

  db_sqlite db_taskify = db_sqlite();

  db_taskify.openMyDatabase();


 
 // Usuario user = Usuario();


 // user.set();
  
  db_taskify.insertUser('Fabiano Figueredo Chaves','ffc@gmail.com');

      
      


}

class MainApp extends StatefulWidget {
 
  const MainApp({super.key});
 
  get routes => <String, WidgetBuilder>{
   // LoginPage.tag: (context) => LoginPage(),
    Home.tag: (context) => const Home(),
  };

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const Home(),
    );  
  }
  
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  } 

  /*
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }  
  */


}

  
  
    
  

