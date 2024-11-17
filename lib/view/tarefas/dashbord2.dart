import 'package:flutter/material.dart';


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CardListScreen(),
    );
  }
}

class CardListScreen extends StatefulWidget {
  @override
  _CardListScreenState createState() => _CardListScreenState();
}

class _CardListScreenState extends State<CardListScreen> {
  
//  const _CardListScreenState({super.key});

  // Lista simulada de dados JSON
  final List<Map<String, dynamic>> jsonData = [
    {"id": 1, "title": "Item 1", "description": "Descrição do Item 1"},
    {"id": 2, "title": "Item 2", "description": "Descrição do Item 2"},
    {"id": 3, "title": "Item 3", "description": "Descrição do Item 3"},
  ];

  // Armazena o item selecionado
  int? selectedId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Cards'),
      ),
      body: Column(
        children: [
          // Lista de Cards
          Expanded(
            child: ListView.builder(
              itemCount: jsonData.length,
              itemBuilder: (context, index) {
                final item = jsonData[index];
                return Card(
                  margin: EdgeInsets.all(8.0),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        
                        
                        Radio<int>(
                          value: item['id'],
                          groupValue: selectedId,
                          onChanged: (value) {
                            setState(() {
                              selectedId = value;
                            });
                          },
                        ),
                        SizedBox(height: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            
                            Text(
                              item['title'],
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                           // SizedBox(height: 8),
                            Text(item['description']),
                            Text(item['description']),
                            Text(item['description']),
                          ],
                        ),
                        // RadioButton para seleção
                        
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          // Container vazio na parte inferior
          Container(
            height: 50,
            color: Colors.grey[200],
            alignment: Alignment.center,
            child: Text(
              selectedId != null
                  ? "Selecionado: Item $selectedId"
                  : "Nenhum item selecionado",
              style: TextStyle(color: Colors.black54),
            ),
          ),
        ],
      ),
    );
  }
}
