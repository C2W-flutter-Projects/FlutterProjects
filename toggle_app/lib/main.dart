import 'package:flutter/material.dart';
import 'toggle_Box.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: toggle_Box(),
      debugShowCheckedModeBanner: false,
    );
  }
}
