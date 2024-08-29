import 'package:flutter/material.dart';

class SubmitButton extends StatelessWidget {
  final VoidCallback onPressed;

  SubmitButton({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: Colors.blue,
          padding: EdgeInsets.symmetric(vertical: 15),
        ),
        child: Text(
          'Enviar',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
