import 'package:bankapp/screens/home.dart';
import 'package:bankapp/themes/my_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BankApp());
}

class BankApp extends StatelessWidget {
  const BankApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "BankApp",
      theme: myTheme,
      home: const Home(),
    );
  }
}
