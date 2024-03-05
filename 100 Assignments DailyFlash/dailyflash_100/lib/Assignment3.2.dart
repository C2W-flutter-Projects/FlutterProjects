import 'package:flutter/material.dart';

class AssignmentL extends StatefulWidget {
  const AssignmentL({super.key});

  @override
  State<AssignmentL> createState() => _AssignmentLState();
}

class _AssignmentLState extends State<AssignmentL> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment 3.2"),
      ),
      body: Center(
        child: Stack(
          children: [
            Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.red, width: 5),
              ),
              child: Stack(
                children: [
                  Image.network(
                    "https://png.pngtree.com/background/20210710/original/pngtree-vector-banner-or-flyer-template-with-white-background-picture-image_984652.jpg",
                    width: 300,
                    height: 300,
                  ),
                  Center(
                    child: Text(
                      "Avishkar",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
