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

  const MainApp({super.key});
 
  //final routes = <String, WidgetBuilder>{
   // LoginPage.tag: (context) => LoginPage(),
   // Home.tag: (context) => Home(),
 // };
  
 ThemeData temaClaro = ThemeData(
  brightness: Brightness.light,
  // Outras configurações do tema claro
);

ThemeData temaEscuro = ThemeData(
  brightness: Brightness.dark,
  // Outras configurações do tema escuro
);

bool temaEscuroAtivo = false;

void alternarTema() {
  setState(() {
    temaEscuroAtivo = !temaEscuroAtivo;
  });
}
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
