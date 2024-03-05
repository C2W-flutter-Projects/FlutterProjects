import 'package:flutter/material.dart';

class AssignmentE extends StatelessWidget {
  const AssignmentE({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment 5"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          decoration: const BoxDecoration(
            color: Colors.blue,
            boxShadow: [
              BoxShadow(
                color: Colors.red,
                blurRadius: 7,
                spreadRadius: 6,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
