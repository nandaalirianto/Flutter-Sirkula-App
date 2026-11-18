import 'package:flutter/material.dart';
import 'package:geden/screens/auth/loginScreen.dart';

void main() {
  runApp(const Sirkula());
}

class Sirkula extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'sirkula',
      home: LoginScreen(),
    );
  }
}