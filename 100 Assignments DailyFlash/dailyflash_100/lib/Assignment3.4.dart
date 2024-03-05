import 'package:flutter/material.dart';

class AssignmentN extends StatefulWidget {
  const AssignmentN({super.key});

  @override
  State<AssignmentN> createState() => _AssignmentNState();
}

class _AssignmentNState extends State<AssignmentN> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment 3.4"),
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 200,
          decoration: const BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(offset: Offset(0, -10), color: Colors.grey, blurRadius: 7)
          ]),
        ),
      ),
    );
  }
}
