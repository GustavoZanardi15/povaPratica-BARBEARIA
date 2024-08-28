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
  var _user;

  @override
  Widget build(BuildContext context) {
    return Form(
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
          ),
          SizedBox(height: 20),
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
              }
            },
          ),
        ],
      ),
    );
  }
}
