import 'package:flutter/material.dart';

class Assignment10D extends StatelessWidget {
  const Assignment10D({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DailyFlash"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                color: Colors.red,
                offset: Offset(3, 3),
                spreadRadius: 2,
                blurRadius: 0,
              ),
            ],
            borderRadius: BorderRadius.circular(10),
            gradient: const LinearGradient(
              colors: [Colors.blue, Colors.purple],
              stops: [0.1, 0.5],
            ),
          ),
        ),
      ),
    );
  }
}
