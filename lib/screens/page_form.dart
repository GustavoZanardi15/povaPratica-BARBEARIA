import 'package:flutter/material.dart';
import '../widgets/header_text.dart';
import '../widgets/user_name_field.dart';
import '../widgets/password_field.dart';
import '../widgets/confirm_password_field.dart';
import '../widgets/submit_button.dart';

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
          HeaderText(),
          SizedBox(height: 20),
          UserNameField(
            onSaved: (value) => _user = value,
            validator: (value) => value == null || value.isEmpty ? 'Por favor, digite seu nome de usuário' : null,
          ),
          SizedBox(height: 20),
          PasswordField(
            onChanged: (value) => _senha = value,
            validator: (value) => value == null || value.isEmpty ? 'Digite sua senha' : null,
          ),
          SizedBox(height: 20),
          ConfirmPasswordField(
            senha: _senha,
            onSaved: (value) => _validacao = value,
            validator: (value) => _senha != value ? 'Confirme sua senha' : null,
          ),
          SizedBox(height: 20),
          SubmitButton(
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
