import 'package:flutter/material.dart';

class Assignmemt6E extends StatefulWidget {
  const Assignmemt6E({Key? key}) : super(key: key);

  @override
  _Assignmemt6EState createState() => _Assignmemt6EState();
}

class _Assignmemt6EState extends State<Assignmemt6E> {
  int selectedContainer = 0;

  void selectContainer(int containerNumber) {
    setState(() {
      selectedContainer = containerNumber;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment 6.5"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                selectContainer(1);
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  color: selectedContainer == 1 ? Colors.red : Colors.white,
                ),
                height: 100,
                width: 200,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            GestureDetector(
              onTap: () {
                selectContainer(2);
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  color: selectedContainer == 2 ? Colors.red : Colors.white,
                ),
                height: 100,
                width: 200,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            GestureDetector(
              onTap: () {
                selectContainer(3);
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  color: selectedContainer == 3 ? Colors.red : Colors.white,
                ),
                height: 100,
                width: 200,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
