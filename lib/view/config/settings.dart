import 'package:a3_udwmj/main.dart';
import 'package:a3_udwmj/view/tarefas/dashbord.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SettingsSfW(),
    );
  }
}

class SettingsSfW extends StatefulWidget {
  const SettingsSfW({super.key});

  @override
  State<SettingsSfW> createState() => _ExampleScreenState();
}

class _ExampleScreenState extends State<SettingsSfW> {
  bool modoEscuro = false, ativNotif = false;

  @override
  Widget build(BuildContext context) {
  final themeProvider = Provider.of<ThemeProvider>(context);  
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Lógica para voltar à tela anterior
            Navigator.pop(context);
          },
        ),
        title: Image.asset(
          'assets/Taskify.png', 
          height: 20,
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20), 
          
          Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            elevation: 4,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Modo escuro',
                    style: TextStyle(fontSize: 16),
                  ),
                  Switch(
                    value: themeProvider.themeMode == ThemeMode.dark,
                    onChanged: (value) {
                      setState(() {
                        themeProvider.toggleTheme();
                      });
                    },
                    
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            elevation: 4,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Ativar notificações',
                    style: TextStyle(fontSize: 16),
                  ),
                  Switch(
                    value: ativNotif,
                    onChanged: (value) {
                      setState(() {
                        ativNotif = value;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            elevation: 4,
            child: InkWell(
              onTap: () {
                // Ação do botão
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Botão pressionado')),
                );
              },
              child: const Padding(
                padding: EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '',
                      style: TextStyle(fontSize: 16, color: Colors.blue),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          RodapeApk(context),
        ],
      ),
      
    );
  }
}
