import 'package:flutter/material.dart';

class AssignmentD extends StatelessWidget {
  const AssignmentD({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment 4"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          decoration: BoxDecoration(
            color: Colors.blue,
            border: Border.all(color: Colors.red, width: 3),
          ),
        ),
      ),
    );
  }
}
