import 'package:flutter/material.dart';

class UserNameField extends StatelessWidget {
  final FormFieldSetter<String>? onSaved;
  final FormFieldValidator<String>? validator;

  UserNameField({this.onSaved, this.validator});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Nome do Usuário',
      ),
      onSaved: onSaved,
      validator: validator,
    );
  }
}
