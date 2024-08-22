import 'package:projbarbearia/models/pessoa.dart';

class Barbeiro extends Pessoa{
String endereco;

  Barbeiro(String nome, int idade, String sexo, String telefone, this.endereco)
   :super(nome, idade, sexo, telefone);
}