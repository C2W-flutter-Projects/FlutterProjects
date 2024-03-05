import 'package:flutter/material.dart';

class AssignmentM extends StatefulWidget {
  const AssignmentM({super.key});

  @override
  State<AssignmentM> createState() => _AssignmentMState();
}

class _AssignmentMState extends State<AssignmentM> {
  bool flag1 = false;

  void changeColor() {
    setState(() {
      flag1 = !flag1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment 3.3"),
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
                      border: Border.all(color: Colors.red, width: 3),
                    ),
                  )
                : Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.green, width: 3),
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}
