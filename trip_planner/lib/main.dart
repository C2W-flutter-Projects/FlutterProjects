import 'package:flutter/material.dart';
import 'Starting_Page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: StartingPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
