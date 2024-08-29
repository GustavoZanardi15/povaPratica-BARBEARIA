import 'package:flutter/material.dart';

class ConfirmPasswordField extends StatelessWidget {
  final String? senha;
  final FormFieldSetter<String>? onSaved;
  final FormFieldValidator<String>? validator;

  ConfirmPasswordField({this.senha, this.onSaved, this.validator});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Repita sua senha',
      ),
      onSaved: onSaved,
      validator: validator,
    );
  }
}
