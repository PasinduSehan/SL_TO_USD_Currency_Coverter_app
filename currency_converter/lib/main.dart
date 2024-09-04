import 'package:currency_converter/HomeScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CURRENCY CONVERTER',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
