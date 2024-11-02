import 'package:flutter/material.dart';
import 'package:a3_udwmj/db_sqlite.dart';

class ListaUser extends StatelessWidget {
 
  db_sqlite db_taskify = db_sqlite();
 
 Widget build(BuildContext context) {
    var futureBuilder = FutureBuilder<List<Map<String, dynamic>>>(
        future: db_taskify.getUsers(),  // Chama o método assíncrono
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());  // Loader enquanto os dados carregam
          } else if (snapshot.hasError) {
            return Center(child: Text('Erro ao carregar dados'));  // Mostra mensagem de erro
          } else if (snapshot.hasData) {
            final clientes = snapshot.data!;

            return ListView.builder(
              itemCount: clientes.length,
              itemBuilder: (context, index) {
                final cliente = clientes[index];
                return ListTile(
                  title: Text(cliente['nome']),
                  subtitle: Text(cliente['email']),
                );
              },
            );
          } else {
            return Center(child: Text('Nenhum dado encontrado'));
          }
        },
      );
    return Scaffold(
      appBar: AppBar(title: Text('Lista de Usuarios')),
      body: futureBuilder,
    );
  }
}