import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exemplo de Botão Flutuante'),
      ),
      body: Center(
        child: Text('Conteúdo principal'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Ação ao clicar no botão
          print('Botão pressionado!');
        },
        child: Icon(Icons.add), // Ícone de +
        tooltip: 'Adicionar',
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndDocked, // Posição: inferior direita
    );
  }
}


import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FloatingActionButton no Column'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Text(
                'Conteúdo principal',
                style: TextStyle(fontSize: 24),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(16.0), // Espaço da borda
              child: FloatingActionButton(
                onPressed: () {
                  print('Botão no Column pressionado!');
                },
                child: Icon(Icons.add),
                tooltip: 'Adicionar',
              ),
            ),
          ),
        ],
      ),
    );
  }
}


import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FloatingActionButton com Column'),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: Container(
                  color: Colors.blue[100],
                  child: Center(child: Text('Conteúdo principal 1')),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.green[100],
                  child: Center(child: Text('Conteúdo principal 2')),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 20, // Distância da parte inferior
            right: 20, // Distância da parte direita
            child: FloatingActionButton(
              onPressed: () {
                print('Botão flutuante pressionado!');
              },
              child: Icon(Icons.add),
            ),
          ),
        ],
      ),
    );
  }
}
