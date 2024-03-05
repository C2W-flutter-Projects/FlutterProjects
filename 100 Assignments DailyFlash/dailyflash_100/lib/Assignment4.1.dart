import 'package:flutter/material.dart';

class AssignmentP extends StatefulWidget {
  const AssignmentP({super.key});

  @override
  State<AssignmentP> createState() => _AssignmentPState();
}

class _AssignmentPState extends State<AssignmentP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment 4.1"),
      ),
      body: Center(
        child: ElevatedButton(
          style: const ButtonStyle(
            shadowColor: MaterialStatePropertyAll(
              Colors.red,
            ),
          ),
          onPressed: () {},
          child: const Text("button"),
        ),
      ),
    );
  }
}
