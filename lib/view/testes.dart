///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/
library;

///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

import 'package:flutter/material.dart';
import 'package:a3_udwmj/view/usuarios/users.dart' show ListaUser;
import 'package:a3_udwmj/view/usuarios/cadastro.dart';
import 'package:a3_udwmj/view/tarefas/tasks.dart';

/*
Widget preview(){

      return  Testes(); 
}
*/

class Teste extends StatelessWidget {
  const Teste({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              flex: 1,
              child: Align(
                alignment: Alignment.center,
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ListaUser()),
                    );
                  },
                  color: const Color(0xffffffff),
                  elevation: 0,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                    side: BorderSide(color: Color(0xff808080), width: 1),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  textColor: const Color(0xff000000),
                  height: 40,
                  minWidth: 140,
                  child: Text(
                    "user.cadastro",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Align(
                alignment: Alignment.center,
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Cadastro()),
                    );
                  },
                  color: const Color(0xffffffff),
                  elevation: 0,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                    side: BorderSide(color: Color(0xff808080), width: 1),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  textColor: const Color(0xff000000),
                  height: 40,
                  minWidth: 140,
                  child: Text(
                    "user.login",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Align(
                alignment: Alignment.center,
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Tasks()),
                    );
                  },
                  color: const Color(0xffffffff),
                  elevation: 0,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                    side: BorderSide(color: Color(0xff808080), width: 1),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  textColor: const Color(0xff000000),
                  height: 40,
                  minWidth: 140,
                  child: Text(
                    "tarefas",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Align(
                alignment: Alignment.center,
                child: MaterialButton(
                  onPressed: () {},
                  color: const Color(0xffffffff),
                  elevation: 0,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                    side: BorderSide(color: Color(0xff808080), width: 1),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  textColor: const Color(0xff000000),
                  height: 40,
                  minWidth: 140,
                  child: Text(
                    "config",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Align(
                alignment: Alignment.center,
                child: MaterialButton(
                  onPressed: () {},
                  color: const Color(0xffffffff),
                  elevation: 0,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                    side: BorderSide(color: Color(0xff808080), width: 1),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  textColor: const Color(0xff000000),
                  height: 40,
                  minWidth: 140,
                  child: Text(
                    "?",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Align(
                alignment: Alignment.center,
                child: MaterialButton(
                  onPressed: () {},
                  color: const Color(0xffffffff),
                  elevation: 0,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                    side: BorderSide(color: Color(0xff808080), width: 1),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  textColor: const Color(0xff000000),
                  height: 40,
                  minWidth: 140,
                  child: Text(
                    "?",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
