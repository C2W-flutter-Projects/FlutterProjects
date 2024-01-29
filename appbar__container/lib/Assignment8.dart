import 'package:flutter/material.dart';

class Assignment8 extends StatelessWidget {
  const Assignment8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment 8"),
      ),
      body: Center(
        child: Container(
          foregroundDecoration: BoxDecoration(
            border: Border.all(color: Colors.red),
          ),
          width: 300,
          height: 300,
        ),
      ),
    );
  }
}
