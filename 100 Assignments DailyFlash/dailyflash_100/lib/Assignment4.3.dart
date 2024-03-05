import 'package:flutter/material.dart';

class AssignmentR extends StatefulWidget {
  const AssignmentR({super.key});

  @override
  State<AssignmentR> createState() => _AssignmentRState();
}

class _AssignmentRState extends State<AssignmentR> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment 4.3"),
      ),
      body: Center(
        child: FloatingActionButton.extended(
          onPressed: () {},
          label: const Row(
            children: [
              Text("Avishkar"),
              SizedBox(
                width: 5,
              ),
              Icon(Icons.person)
            ],
          ),
        ),
      ),
    );
  }
}
