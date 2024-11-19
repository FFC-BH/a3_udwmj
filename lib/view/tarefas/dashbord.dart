import 'package:a3_udwmj/controller/node_js.dart';
import 'package:a3_udwmj/view/tarefas/cad_tasks.dart';
import 'package:flutter/material.dart';

/*
class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CardListScreenn(),
    );
  }
}
*/
class Dashboard extends StatefulWidget {
  @override
  _CardListScreenState createState() => _CardListScreenState();
}

class _CardListScreenState extends State<Dashboard> {
   
  List<Map<String, dynamic>>? jsonData;
 
  @override
    void initState() {
      super.initState();
      buscaTarefas();
  }

  Future<void> buscaTarefas() async {
    
    try {
      final data = await fetchDataFromDatabase();
      setState(() {
        jsonData = data; // Armazena o JSON retornado na variável
      });
    } catch (e) {
      print('Erro ao carregar os dados: $e');
    }
  }
  
  int? selectedIndex;

  @override
  Widget build(BuildContext context) {     
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        leading: Padding(
            padding: const EdgeInsets.all(8.0), // Adiciona margem à imagem
            child: Image.asset(
              'assets/Taskify.png',
              fit: BoxFit.contain,
            ),
          ),


      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: jsonData!.length,
              itemBuilder: (context, index) {
                final item = jsonData!.elementAt(index);
                return Card(
                  color: Colors.primaries[index % Colors.primaries.length],
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Radio<int>(
                          value: index,
                          groupValue: selectedIndex,
                          onChanged: (value) {
                            setState(() {
                              selectedIndex = value;
                            });
                          },
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Campo 1: ${item["id"]}',
                                          style: TextStyle(fontSize: 16),
                                        ),
                                        SizedBox(height: 8),
                                        Text(
                                          'Campo 2: ${item["name"]}',
                                          style: TextStyle(fontSize: 16),
                                        ),
                                        SizedBox(height: 8),
                                        Text(
                                          'Campo 3: ${item["description"]}',
                                          style: TextStyle(fontSize: 16),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Text(
                                      'Campo 4: ${item["date_finish"]}',
                                      style: TextStyle(fontSize: 16),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),

            

          ),
                           
           Positioned(
            bottom: 0, // Distância da parte inferior
            right: 0, // Distância da parte direita
            child: FloatingActionButton(
              onPressed: () {
                Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const CadTask()),
                                    );
              },
              child: Icon(Icons.add),
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
                             child: Image.asset('assets/Perfil.png', // Caminho para a imagem
                             width: 200, // Ajusta o tamanho desejado
                             height: 80,
                             fit: BoxFit.cover, // Ajusta como a imagem se encaixa                            
                              ),                             
                          ),
                          
                          onPressed: () {}, //async {

                             // final result = await fetchDataFromDatabase();

                             //  print('Status Code: ${result['statusCode']}');
                            //   print('Body:');
                            //     for (var item in result['body']) {
                            //   print(item);



                                 


                         // },
                          color: Color(0xff212435),
                          iconSize: 24,
                        ),
                      ),
                    ],
                  ),
                
                ),
        ],
      ),
     
    );
  }
}
