import 'package:flutter/material.dart';

class PasswordField extends StatelessWidget {
  final FormFieldSetter<String>? onChanged;
  final FormFieldValidator<String>? validator;

  PasswordField({this.onChanged, this.validator});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Senha',
      ),
      onChanged: onChanged,
      validator: validator,
    );
  }
}
