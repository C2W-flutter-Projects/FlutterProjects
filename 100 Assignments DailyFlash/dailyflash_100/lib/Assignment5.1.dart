import 'package:flutter/material.dart';

class AssignmentU extends StatefulWidget {
  const AssignmentU({super.key});

  @override
  State<AssignmentU> createState() => _AssignmentUState();
}

class _AssignmentUState extends State<AssignmentU> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile Information"),
      ),
      body: Center(
        child: Column(
          children: [
            Image.network(
              "https://t3.ftcdn.net/jpg/05/79/55/26/360_F_579552668_sZD51Sjmi89GhGqyF27pZcrqyi7cEYBH.jpg",
              width: 250,
              height: 250,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Avishkar Jagtap",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "9881179495",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
