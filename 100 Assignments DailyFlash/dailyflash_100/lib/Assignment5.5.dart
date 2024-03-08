import 'package:flutter/material.dart';

class AssignmentY extends StatefulWidget {
  const AssignmentY({super.key});

  @override
  State<AssignmentY> createState() => _AssignmentYState();
}

class _AssignmentYState extends State<AssignmentY> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment 5.5"),
      ),
      body: Center(
        child: Column(
          children: [
            Image.network(
              "https://t3.ftcdn.net/jpg/05/79/55/26/360_F_579552668_sZD51Sjmi89GhGqyF27pZcrqyi7cEYBH.jpg",
              width: 200,
              height: 200,
            ),
            const Spacer(),
            Container(
              width: 100,
              height: 100,
              color: Colors.red,
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
