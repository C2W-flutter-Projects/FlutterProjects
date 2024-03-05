import 'package:flutter/material.dart';

class AssignmentJ extends StatefulWidget {
  const AssignmentJ({super.key});

  @override
  State<AssignmentJ> createState() => _AssignmentJState();
}

class _AssignmentJState extends State<AssignmentJ> {
  bool flag1 = false;
  bool flag2 = false;

  void changeColor() {
    setState(() {
      flag1 = !flag1;
      flag2 = !flag2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment 2.5"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Center(
          child: GestureDetector(
            onTap: () {
              changeColor();
            },
            child: (!flag1)
                ? Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      border: Border.all(color: Colors.black, width: 3),
                    ),
                    child: const Center(
                      child: Text(
                        "Click Me!",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                    ),
                  )
                : Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      border: Border.all(color: Colors.black, width: 3),
                    ),
                    child: const Center(
                      child: Text(
                        "Container Tapped!",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}
