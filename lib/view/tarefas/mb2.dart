import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     // home: CustomAppBarScreen(),
    );
  }
}

class CustomAppBarScreennn extends StatefulWidget {
  @override
  _CustomAppBarScreenState createState() => _CustomAppBarScreenState();
}

class _CustomAppBarScreenState extends State<CustomAppBarScreennn> {
  // Lista de itens do DropdownButton
  final List<String> dropdownItems = ["Opção 1", "Opção 2", "Opção 3", "Opção 4"];
  String? selectedItem;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100), // Altura personalizada
        child: AppBar(
          automaticallyImplyLeading: false, // Remove o botão padrão (back)
          flexibleSpace: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Imagem pequena no topo
                    Column(
                      children: [
                        Image(
                  image: AssetImage('assets/Taskify.png'),
                  height: 30,
                  width: 30,
                  fit: BoxFit.contain,
                ),
                      ],
                    ),
                    SizedBox(width: 16),
                    // Texto abaixo da imagem
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Texto Superior",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "Texto Secundário",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white70,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Ícone com DropdownButton
                    DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        icon: Icon(
                          Icons.more_vert,
                          color: Colors.white,
                        ),
                        items: dropdownItems.map((String item) {
                          return DropdownMenuItem<String>(
                            value: item,
                            child: Text(item),
                          );
                        }).toList(),
                        onChanged: (value) {
                          setState(() {
                            selectedItem = value;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      body: Center(
        child: Text(
          selectedItem != null
              ? "Você selecionou: $selectedItem"
              : "Nenhuma opção selecionada.",
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
