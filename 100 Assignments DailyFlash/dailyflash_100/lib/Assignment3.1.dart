import 'package:flutter/material.dart';

class AssignmentK extends StatefulWidget {
  const AssignmentK({super.key});

  @override
  State<AssignmentK> createState() => _AssignmentKState();
}

class _AssignmentKState extends State<AssignmentK> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment 3.1"),
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.network(
                "https://imgd.aeplcdn.com/664x374/n/cw/ec/26918/xuv300-exterior-right-front-three-quarter-148708.jpeg?isig=0&q=80"),
          ),
        ),
      ),
    );
  }
}
