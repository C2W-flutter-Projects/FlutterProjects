import 'package:flutter/material.dart';

class Assignment10E extends StatelessWidget {
  const Assignment10E({super.key});

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
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.red,
                offset: Offset(3, 3),
                spreadRadius: 2,
                blurRadius: 0,
              ),
            ],
            // borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.purple, Colors.green],
              stops: [0.1, 0.4, 1.9],
            ),
          ),
        ),
      ),
    );
  }
}
