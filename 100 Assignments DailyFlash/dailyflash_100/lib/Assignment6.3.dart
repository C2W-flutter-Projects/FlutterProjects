import 'package:flutter/material.dart';

class Assignment6C extends StatelessWidget {
  const Assignment6C({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment 6.3"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 70,
                  width: 90,
                  color: Colors.red,
                ),
                const SizedBox(
                  width: 30,
                ),
                Container(
                  height: 70,
                  width: 90,
                  color: Colors.purple,
                ),
              ],
            ),
            const SizedBox(
              height: 300,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 70,
                  width: 90,
                  color: Colors.orange,
                ),
                const SizedBox(
                  width: 30,
                ),
                Container(
                  height: 70,
                  width: 90,
                  color: Colors.green,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
