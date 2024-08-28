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
  var _user;
  var _senha;

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
            onSaved: (value) {
              _senha = value;
            },
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Digite sua senha';
              }
              return null;
            },
          ),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.blue,
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
                print(_user); 
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
