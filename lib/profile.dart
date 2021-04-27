import 'package:flutter/material.dart';
import 'package:projecttwo/taff.dart';
import 'package:projecttwo/group2.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Taff(),
          Group2(),
        ],
      ),
    );
  }
}
