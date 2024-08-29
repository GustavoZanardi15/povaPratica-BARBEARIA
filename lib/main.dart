import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Scaffold(
    body: Padding(
      padding: const EdgeInsets.all(20),
      child: PageForm(),
    ),
  ),
));

class PageForm extends StatefulWidget {
  @override
  _PageFormState createState() => _PageFormState();
}

class _PageFormState extends State<PageForm> {
  final _formKey = GlobalKey<FormState>();

  AutovalidateMode _autovalidate = AutovalidateMode.disabled; 
  String? _user; 
  String? _senha;
  String? _validacao;

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: _autovalidate, 
      key: _formKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Nome do Usuário',
            ),
            onSaved: (value) {
              _user = value;
            },
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, digite seu nome de usuário';
              }
              return null;
            },
          ),
          SizedBox(height: 20),
          TextFormField(
            obscureText: true,

            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Senha',
            ),
            onChanged: (value) {
              _senha = value;
            },
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Digite sua senha';
              }
              return null;
            },
          ),
          SizedBox(height: 20),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Repita sua senha',
            ),
            onSaved: (value){
              _validacao = value;
            },
            validator: (value){
              print('senha value: $_senha');
              if(_senha != value){
                return 'Confirme sua senha';
              }
              return null;
            }
          ),
          SizedBox(height: 20), 
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.blue,
              padding: EdgeInsets.symmetric(vertical: 15),
            ),
            child: Text(
              'Submit',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: () {
              if (_formKey.currentState!.validate()) { 
                _formKey.currentState!.save(); 
                print('Usuário: $_user'); 
                print('Senha: $_senha');
                print(_validacao);
              } else {
                setState(() {
                  _autovalidate = AutovalidateMode.always; 
                });
              }
            },
          ),
        ],
      ),
    );
  }
}
