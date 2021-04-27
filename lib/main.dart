import 'package:flutter/material.dart';
import 'package:projecttwo/bot.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Exercice 2',
      home: Bot(),
    );
  }
}
