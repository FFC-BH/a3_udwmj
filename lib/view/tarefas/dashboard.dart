
import 'package:a3_udwmj/view/home.dart';
import 'package:a3_udwmj/view/tarefas/cad_tasks.dart';
import 'package:flutter/material.dart';


class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController email, senha;

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
                ///***If you have exported images you must have to copy those images in assets/images directory.
                const Image(
                  image: AssetImage('assets/Taskify.png'),
                  height: 150,
                  width: 150,
                  fit: BoxFit.contain,
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
                              onPressed: () async {
                                
                                  
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const CadTask()),
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
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Align(
                            alignment: const Alignment(0.4, 0.0),
                            child: MaterialButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Home()),
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
                                "Cancelar",
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
                  height: 130,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(211, 14, 44, 133),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.zero,
                    border: Border.all(color: const Color(0x4d9e9e9e), width: 1),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [                      
                      Expanded(
                        flex: 1,
                        child: IconButton( 

                          icon: ClipRRect(
                             borderRadius: BorderRadius.circular(8.0), // Ajusta os cantos se necessário
                             child: Image.asset('assets/Dashboard.png', // Caminho para a imagem
                             width: 200, // Ajusta o tamanho desejado
                             height: 80,
                             fit: BoxFit.cover, // Ajusta como a imagem se encaixa                            
                              ),                             
                          ),
                             
                          onPressed: () {},
                          color: Color.fromARGB(255, 45, 57, 127),
                          iconSize: 24,                          
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: IconButton(

                          icon: ClipRRect(
                             borderRadius: BorderRadius.circular(8.0), // Ajusta os cantos se necessário
                             child: Image.asset('assets/Calendario.png', // Caminho para a imagem
                             width: 200, // Ajusta o tamanho desejado
                             height: 80,
                             fit: BoxFit.cover, // Ajusta como a imagem se encaixa                            
                              ),                             
                          ),         

                          onPressed: () {},
                          color: Color.fromARGB(255, 101, 110, 163),
                          iconSize: 24,
                          
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: IconButton(

                          icon: ClipRRect(
                             borderRadius: BorderRadius.circular(8.0), // Ajusta os cantos se necessário
                             child: Image.asset('assets/Settings.png', // Caminho para a imagem
                             width: 200, // Ajusta o tamanho desejado
                             height: 80,
                             fit: BoxFit.cover, // Ajusta como a imagem se encaixa                            
                              ),                             
                          ),       

                          onPressed: () {},
                          color: Color(0xff212435),
                          iconSize: 24,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: IconButton(

                          icon: ClipRRect(
                             borderRadius: BorderRadius.circular(8.0), // Ajusta os cantos se necessário
                             child: Image.asset('assets/Taskify.png', // Caminho para a imagem
                             width: 200, // Ajusta o tamanho desejado
                             height: 80,
                             fit: BoxFit.cover, // Ajusta como a imagem se encaixa                            
                              ),                             
                          ),
                          
                          onPressed: () {},
                          color: Color(0xff212435),
                          iconSize: 24,
                        ),
                      ),
                    ],
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
      
      
              /*
                Container(                  
                  margin: const EdgeInsets.fromLTRB(0, 25, 0, 0),
                  padding: const EdgeInsets.all(0),
                  width: MediaQuery.of(context).size.width,
                  height: 130,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(211, 14, 44, 133),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.zero,
                    border: Border.all(color: const Color(0x4d9e9e9e), width: 1),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [                      
                      Expanded(
                        flex: 1,
                        child: IconButton( 

                          icon: ClipRRect(
                             borderRadius: BorderRadius.circular(8.0), // Ajusta os cantos se necessário
                             child: Image.asset('assets/Dashboard.png', // Caminho para a imagem
                             width: 200, // Ajusta o tamanho desejado
                             height: 80,
                             fit: BoxFit.cover, // Ajusta como a imagem se encaixa                            
                              ),                             
                          ),
                             
                          onPressed: () {},
                          color: Color.fromARGB(255, 45, 57, 127),
                          iconSize: 24,                          
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: IconButton(

                          icon: ClipRRect(
                             borderRadius: BorderRadius.circular(8.0), // Ajusta os cantos se necessário
                             child: Image.asset('assets/Calendario.png', // Caminho para a imagem
                             width: 200, // Ajusta o tamanho desejado
                             height: 80,
                             fit: BoxFit.cover, // Ajusta como a imagem se encaixa                            
                              ),                             
                          ),         

                          onPressed: () {},
                          color: Color.fromARGB(255, 101, 110, 163),
                          iconSize: 24,
                          
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: IconButton(

                          icon: ClipRRect(
                             borderRadius: BorderRadius.circular(8.0), // Ajusta os cantos se necessário
                             child: Image.asset('assets/Settings.png', // Caminho para a imagem
                             width: 200, // Ajusta o tamanho desejado
                             height: 80,
                             fit: BoxFit.cover, // Ajusta como a imagem se encaixa                            
                              ),                             
                          ),       

                          onPressed: () {},
                          color: Color(0xff212435),
                          iconSize: 24,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: IconButton(

                          icon: ClipRRect(
                             borderRadius: BorderRadius.circular(8.0), // Ajusta os cantos se necessário
                             child: Image.asset('assets/Perfil.png', // Caminho para a imagem
                             width: 200, // Ajusta o tamanho desejado
                             height: 80,
                             fit: BoxFit.cover, // Ajusta como a imagem se encaixa                            
                              ),                             
                          ),
                          
                          onPressed: () {},
                          color: Color(0xff212435),
                          iconSize: 24,
                        ),
                      ),
                    ],
                  ),
                
                ),
   
        */       
                

   