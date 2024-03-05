import 'package:flutter/material.dart';

class AssignmentT extends StatefulWidget {
  const AssignmentT({super.key});

  @override
  State<AssignmentT> createState() => _AssignmentTState();
}

class _AssignmentTState extends State<AssignmentT> {
  bool _isLongPressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment 4.5"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          GestureDetector(
            onLongPress: () {
              setState(() {
                _isLongPressed = true;
              });
            },
            onLongPressEnd: (_) {
              setState(() {
                _isLongPressed = false;
              });
            },
            child: FloatingActionButton(
              onPressed: () {},
              backgroundColor: (_isLongPressed) ? Colors.purple : Colors.blue,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      )),
    );
  }
}
