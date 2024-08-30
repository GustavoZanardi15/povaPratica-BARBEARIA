import 'package:flutter/material.dart';

class HeaderText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Cadastre-se',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 50,
        fontFamily: 'Arial',
        color: Colors.white,
      ),
    );
  }
}
