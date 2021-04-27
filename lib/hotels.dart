import 'package:flutter/material.dart';

class Hotels extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hotels", textAlign: TextAlign.center),
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
