import 'package:flutter/material.dart';

class Assignment10 extends StatelessWidget {
  const Assignment10({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment 10"),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.yellow,
            border: Border.all(color: Colors.red),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          width: 300,
          height: 300,
        ),
      ),
    );
  }
}
