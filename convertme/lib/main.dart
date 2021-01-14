import 'package:flutter/material.dart';
import 'homepage.dart';
import 'temperature.dart';
import 'volume.dart';
import 'weight.dart';

void main() {
  runApp(ConvertMe());
}

class ConvertMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: Homepage(),
    );
  }
}
