
class Usuario{
  
  late String _nome;

  late String _email;

  set(String nome, String email)
  {
      nome = _nome;
      email = _email;

  }
  
  String get nome => _nome;

  String get email => _email;
  
  
}