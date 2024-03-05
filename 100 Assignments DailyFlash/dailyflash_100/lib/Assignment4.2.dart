import 'package:flutter/material.dart';

class AssignmentQ extends StatefulWidget {
  const AssignmentQ({super.key});

  @override
  State<AssignmentQ> createState() => _AssignmentQState();
}

class _AssignmentQState extends State<AssignmentQ> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment 4.2"),
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              fixedSize: const Size(200, 200),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100),
                side: const BorderSide(
                  color: Colors.red,
                ),
              )),
          onPressed: () {},
          child: const Text("button"),
        ),
      ),
    );
  }
}
