import 'package:flutter/material.dart';
import 'package:todo_list_optimized/login.dart';
// import 'todo.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: login(),
      debugShowCheckedModeBanner: false,
    );
  }
}
