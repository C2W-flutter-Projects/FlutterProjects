import 'package:flutter/material.dart';

class Assignment9 extends StatelessWidget {
  const Assignment9({super.key});

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
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          width: 300,
          height: 300,
        ),
      ),
    );
  }
}
