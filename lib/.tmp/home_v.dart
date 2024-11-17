//import 'package:a3_udwmj/view/usuarios/cadastro.dart';
import 'package:a3_udwmj/view/usuarios/login.dart';
import 'package:flutter/material.dart';

class Home_v extends StatelessWidget {
  const Home_v({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.only(right: 1, bottom: 20),
        decoration: ShapeDecoration(
          color: Color(0xFF41558F),
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 2,
              strokeAlign: BorderSide.strokeAlignOutside,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Center(
          child: Container(
            width: 380,
            height: 700,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Logo da aplicação
                  const Image(
                    image: AssetImage('assets/Taskify.png'),
                    height: 150,
                    width: 220,
                    fit: BoxFit.contain,
                  ),
                  SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.only(
                        bottom: 20), // Espaço abaixo do texto
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: SizedBox(
                        width: double.infinity,
                        child: Text(
                          'Mude seu jeito de \norganizar suas tarefas!',
                          style: TextStyle(
                            color: Color(0xFF535252),
                            fontSize: 20,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700,
                            height: 1.2,
                            letterSpacing: 0.10,
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Botões alinhados abaixo do texto
                  Align(
                    alignment: Alignment.centerLeft,

                    
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Align(
                              alignment: const Alignment(-1.0, 0.0),
                              child: MaterialButton(
                                onPressed: () {
                                 // Navigator.push(
                                 //   context,
                                  //  MaterialPageRoute(
                                   //    builder: (context) => const Descr()),
                                 // );
                                  
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
                                child: const Text(
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
                              alignment: const Alignment(-1.0, 0.0),
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
                                child: const Text(
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
                  // Imagem de fundo ajustada abaixo dos botões
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/Estudante1.png'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
