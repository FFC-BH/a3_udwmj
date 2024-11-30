# a3_udwmj

Fabiano Figueredo Chaves
RA: 324118586

Renato Comarú Matos
RA: 1292314966

Viviane da Costa Ferreira
RA: 1262429956

Lívia Silva Lima
RA: 824157723




















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
