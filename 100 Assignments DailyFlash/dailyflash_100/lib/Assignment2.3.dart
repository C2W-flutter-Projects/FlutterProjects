import 'package:flutter/material.dart';

class AssignmentH extends StatelessWidget {
  const AssignmentH({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment 2.3"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.yellow,
            border: Border.all(color: Colors.red, width: 3),
            borderRadius:
                const BorderRadius.only(topRight: Radius.circular(20)),
          ),
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                "Hello",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
