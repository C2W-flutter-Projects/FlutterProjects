import 'package:flutter/material.dart';

class AssignmentS extends StatefulWidget {
  const AssignmentS({super.key});

  @override
  State<AssignmentS> createState() => _AssignmentSState();
}

class _AssignmentSState extends State<AssignmentS> {
  bool _is_hover = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment 4.3"),
      ),
      body: Center(
        child: MouseRegion(
          onEnter: (_) {
            setState(() {
              _is_hover = true;
            });
          },
          onExit: (_) {
            setState(() {
              _is_hover = false;
            });
          },
          child: FloatingActionButton(
            onPressed: () {},
            backgroundColor: (_is_hover) ? Colors.orange : Colors.blue,
            child: const Text("Hover"),
          ),
        ),
      ),
    );
  }
}
