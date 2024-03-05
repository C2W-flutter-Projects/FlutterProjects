import 'package:flutter/material.dart';

class AssignmentO extends StatefulWidget {
  const AssignmentO({super.key});

  @override
  State<AssignmentO> createState() => _AssignmentOState();
}

class _AssignmentOState extends State<AssignmentO> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment 3.5"),
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          decoration: const BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.all(Radius.circular(100)),
            gradient: LinearGradient(
              colors: [Colors.red, Colors.blue],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              stops: [0.5, 0.5],
            ),
          ),
        ),
      ),
    );
  }
}
