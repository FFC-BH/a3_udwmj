# a3_udwmj

Linux --> Ctrl + Shift + I

Navigator.pop(context);

Sites que podem ajudar:

- [Medium - Integração de SQLite em Flutter (CRUD)](https://medium.com/@purvangsuvagiya/a-step-by-step-guide-to-integrate-sqlite-in-your-flutter-app-crud-696f50f4f481)
- [YouTube - Tutorial de SQLite em Flutter](https://www.youtube.com/watch?v=A2k290Fj_UA)
- [JSON to Dart Converter](https://javiercbk.github.io/json_to_dart/)
- [XML to Dart Converter](https://jsonformatter.org/xml-to-dart)
- [FlutterViz - Criador de Interfaces Flutter](https://app.flutterviz.com/)
- [Live Preview de Widgets no Flutter: sem emulador, sem build!](https://www.youtube.com/watch?v=IjGrYy7HfFA)
- [Dive into DevTools]
https://www.youtube.com/watch?v=_EYk-E29edo&t=172s
https://www.youtube.com/watch?v=Jakrc3Tn_y4
https://medium.com/flutter/how-to-debug-layout-issues-with-the-flutter-inspector-87460a7b9db



# Resumo do que temos até agora pelo GithubCopilot:

## Estrutura do Projeto

Este projeto é um aplicativo Flutter que utiliza um banco de dados SQLite para gerenciar dados de usuários e tarefas.

### Estrutura do Projeto

#### Diretórios principais:

- **android**: Configurações e arquivos específicos para a plataforma Android.
- **ios**: Configurações e arquivos específicos para a plataforma iOS.
- **lib**: Contém o código Dart principal do aplicativo.
- **linux**, **macos**, **windows**: Configurações e arquivos específicos para as plataformas Linux, macOS e Windows.
- **assets**: Contém recursos como imagens e arquivos de configuração.
- **build**: Diretório de saída para arquivos de build.

### Arquivos e Configurações Importantes

- **pubspec.yaml**: Define as dependências do projeto.
- **lib/main.dart**: Ponto de entrada do aplicativo Flutter.
- **lib/db_sqlite.dart**: Contém a classe `db_sqlite` que gerencia o banco de dados SQLite.
- **lib/view/usuarios/users.dart**: Contém a classe `ListaUser` que exibe uma lista de usuários.

## Funcionalidades Implementadas

### Banco de Dados SQLite:

- A classe `db_sqlite` gerencia a abertura e criação do banco de dados.
- Tabelas `usuario` e `tarefa` são criadas no banco de dados.
- Métodos para inserir e recuperar dados de usuários e tarefas.

### Interface do Usuário:

- A classe `MainApp` configura o aplicativo Flutter.
- A classe `ListaUser` exibe uma lista de usuários recuperados do banco de dados.

## Exemplos de Código

### Abertura do Banco de Dados:

```dart
Future<Database> openMyDatabase() async {
  return await openDatabase(join(await getDatabasesPath(), 'taskify.db'),
    version: 1,
    onCreate: (db, version) async {
      return db.execute('''
        PRAGMA foreign_keys = ON;
        CREATE TABLE IF NOT EXISTS usuario (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          nome TEXT NOT NULL,
          email TEXT NOT NULL
        );
        CREATE TABLE IF NOT EXISTS tarefa (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          usuarioId INTEGER,
          titulo TEXT NOT NULL,
          descricao TEXT,
          FOREIGN KEY(usuarioId) REFERENCES usuario(id)
        );
      ''');
    }
  );
}
```

### Exibição de Usuários:

```dart
var futureBuilder = FutureBuilder<List<Map<String, dynamic>>>(
  future: db_taskify.getUsers(),
  builder: (context, snapshot) {
    if (snapshot.connectionState == ConnectionState.waiting) {
      return Center(child: CircularProgressIndicator());
    } else if (snapshot.hasError) {
      return Center(child: Text('Erro ao carregar dados'));
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
```

## Próximos Passos

- Implementar mais funcionalidades no banco de dados, como atualização e exclusão de registros.
- Melhorar a interface do usuário para incluir mais telas e funcionalidades.
- Testar o aplicativo em diferentes plataformas (Android, iOS, Linux, macOS, Windows).
