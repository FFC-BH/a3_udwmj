import 'package:flutter/material.dart';


class MyAppp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CardListScreenn(),
    );
  }
}

class CardListScreenn extends StatefulWidget {
  @override
  _CardListScreenState createState() => _CardListScreenState();
}

class _CardListScreenState extends State<CardListScreenn> {
  // JSON simulado
  final List<Map<String, String>> jsonData = [
    {
      "campo1": "Valor 1",
      "campo2": "Valor 2",
      "campo3": "Valor 3",
      "campo4": "Valor 4",
    },
    {
      "campo1": "Outro 1",
      "campo2": "Outro 2",
      "campo3": "Outro 3",
      "campo4": "Outro 4",
    },
    {
      "campo1": "Dado 1",
      "campo2": "Dado 2",
      "campo3": "Dado 3",
      "campo4": "Dado 4",
    },
  ];

  // Variável para controlar a seleção do RadioButton
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
              itemCount: jsonData.length,
              itemBuilder: (context, index) {
                final item = jsonData[index];
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
                                          'Campo 1: ${item["campo1"]}',
                                          style: TextStyle(fontSize: 16),
                                        ),
                                        SizedBox(height: 8),
                                        Text(
                                          'Campo 2: ${item["campo2"]}',
                                          style: TextStyle(fontSize: 16),
                                        ),
                                        SizedBox(height: 8),
                                        Text(
                                          'Campo 3: ${item["campo3"]}',
                                          style: TextStyle(fontSize: 16),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Text(
                                      'Campo 4: ${item["campo4"]}',
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
        ],
      ),
    );
  }
}
