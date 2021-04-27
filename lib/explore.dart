import 'package:flutter/material.dart';

class Explore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Explore", textAlign: TextAlign.center),
      ),
      body: Center(
          child: Text(
        'Welcome',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 50.0,
        ),
      )),
    );
  }
}
