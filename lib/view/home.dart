import 'package:a3_udwmj/view/usuarios/cadastro.dart';
import 'package:a3_udwmj/view/usuarios/login.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffffffff),
        body: Align(
          alignment: const Alignment(0.0, 0.2),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 35, 0, 0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  const Image(
                    image: AssetImage('assets/Taskify.png'),
                    height: 150,
                    width: 150,
                    fit: BoxFit.contain,
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 8, 0, 30),
                    child: Text(
                      "Mude seu jeito de organizar suas tarefas!",
                      textAlign: TextAlign.left,
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                        fontSize: 16,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  Align(
                    alignment: const Alignment(0.0, 0.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(30),
                            child: Align(
                              alignment: const Alignment(0.0, 0.0),
                              child: MaterialButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Descr()),
                                  );
                                },
                                color: const Color(0xff2f34c5),
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  side: const BorderSide(
                                      color: Color(0xff808080), width: 1),
                                ),
                                padding: const EdgeInsets.all(16),
                                textColor: const Color(0xffffffff),
                                height: 50,
                                minWidth: 100,
                                child: Text(
                                  "Teste já!",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Align(
                              alignment: const Alignment(0.4, 0.0),
                              child: MaterialButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Login()),
                                  );
                                },
                                color: const Color(0xff100202),
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  side: const BorderSide(
                                      color: Color(0xff808080), width: 1),
                                ),
                                padding: const EdgeInsets.all(16),
                                textColor: const Color(0xffffffff),
                                height: 50,
                                minWidth: 100,
                                child: Text(
                                  "Login",
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
                  ),
                  const Image(
                    image: AssetImage('assets/Estudante1.png'),
                    height: 300,
                    width: 300,
                    fit: BoxFit.contain,
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 25, 0, 0),
                    padding: const EdgeInsets.all(0),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: const Color(0xff0e0e9b),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.zero,
                      border:
                          Border.all(color: const Color(0x4d9e9e9e), width: 1),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}

class Descr extends StatelessWidget {
  const Descr({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Align(
        alignment: const Alignment(0.0, 0.2),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 35, 0, 0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 8, 0, 30),
                  child: Text(
                    "O Taskfy é simples e intuitivo. Ele ajuda você a organizar suas atividades diárias de forma prática e fácil!\n\nDefina prazos e receba lembretes de suas atividades para não perder nada!\n\nClassifique tarefas por categoria\n\nAcompanhe seu progresso com uma interface limpa e funcional!\n\nMantenha-se produtivo e no controle com Taskify!",
                    textAlign: TextAlign.left,
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                      fontSize: 16,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
                Align(
                  alignment: const Alignment(0.0, 0.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(30),
                          child: Align(
                            alignment: const Alignment(0.0, 0.0),
                            child: MaterialButton(
                                 onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Cadastro()),
                                  );
                                },
                              color: const Color(0xff2f34c5),
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                side: const BorderSide(
                                    color: Color(0xff808080), width: 1),
                              ),
                              padding: const EdgeInsets.all(16),
                              textColor: const Color(0xffffffff),
                              height: 50,
                              minWidth: 100,
                              child: Text(
                                "Comece agora",
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
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 25, 0, 0),
                  padding: const EdgeInsets.all(0),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: const Color(0xff0e0e9b),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.zero,
                    border:
                        Border.all(color: const Color(0x4d9e9e9e), width: 1),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
