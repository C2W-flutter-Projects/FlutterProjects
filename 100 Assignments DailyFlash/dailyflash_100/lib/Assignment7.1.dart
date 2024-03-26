import 'package:flutter/material.dart';

class Assignment7A extends StatelessWidget {
  const Assignment7A({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              color: Colors.red,
            ),
            const SizedBox(
              width: 30,
            ),
            Container(
              height: 80,
              width: 80,
              color: Colors.green,
            ),
            const SizedBox(
              width: 30,
            ),
            Container(
              height: 70,
              width: 80,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
