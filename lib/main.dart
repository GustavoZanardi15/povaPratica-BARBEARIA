import 'package:flutter/material.dart';
import 'screens/page_form.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Scaffold(
    body: Padding(
      padding: const EdgeInsets.all(20),
      child: PageForm(),
    ),
  ),
));
