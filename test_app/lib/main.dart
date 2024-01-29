import 'package:flutter/material.dart';
// import 'package:test_app/assignment4.dart';
// import 'package:test_app/assignment5.dart';
// import 'package:test_app/assignment1.dart';
// import 'package:test_app/assignment2.dart';
// import 'package:test_app/assignment3.dart';
import 'package:test_app/assignment6.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Assignment6(),
    );
  }
}
