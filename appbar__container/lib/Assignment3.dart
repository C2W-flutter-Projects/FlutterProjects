import 'package:flutter/material.dart';

class Assignment3 extends StatelessWidget {
  const Assignment3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hello Core2Web"),
          ],
        ),
      ),
      body: Center(
        child: Container(
          color: Colors.blue,
          width: 360,
          height: 200,
        ),
      ),
    );
  }
}
