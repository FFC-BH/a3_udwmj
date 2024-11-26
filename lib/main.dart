import 'package:a3_udwmj/view/home.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:a3_udwmj/controller/db_sqlite.dart';
import 'package:a3_udwmj/controller/api_sdm.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart' show databaseFactory, databaseFactoryFfi, sqfliteFfiInit;

void main() async {
  
  sqfliteFfiInit();
  databaseFactory = databaseFactoryFfi;
  db_sqlite().openMyDatabase();

  sincronize(30);  
  
  runApp(MainApp()); 

}

class MainApp extends StatelessWidget {

  MainApp({super.key});
 
  //final routes = <String, WidgetBuilder>{
   // LoginPage.tag: (context) => LoginPage(),
   // Home.tag: (context) => Home(),

  
    ThemeData temaClaro = ThemeData(
   brightness: Brightness.light,
  // Outras configurações do tema claro
    );

  ThemeData temaEscuro = ThemeData(
   brightness: Brightness.dark,
  // Outras configurações do tema escuro
    );

  bool temaEscuroAtivo = false;

 // void alternarTema() {
 // setState(() {
 //   temaEscuroAtivo = !temaEscuroAtivo;
 // });

   @override
  Widget build(BuildContext context) {
    return MaterialApp(      
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: const Home(),
  //     home: MyCustomWidget(),
        // home: CustomAppBarScreen(),
        // home: CustomAppBarScreennn(),
 //////////        home: CardListScreenn(),
         //           home: MyForm(),
    );
  }

}

void mostrarErro(BuildContext context, String mensagem) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text("Erro"),
        content: Text(mensagem),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text("OK"),
          ),
        ],
      );
    },
  );
}

// Função para mostrar um pop-up de sucesso
void mostrarSucesso(BuildContext context, String mensagem) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text("Sucesso"),
        content: Text(mensagem),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text("OK"),
          ),
        ],
      );
    },
  );
}
