import 'package:flutter/material.dart';

class Assignment11A extends StatefulWidget {
  const Assignment11A({super.key});

  @override
  State<Assignment11A> createState() => _Assignment11AState();
}

class _Assignment11AState extends State<Assignment11A> {
  bool flag = false;
  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DailyFlash"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(58.0),
          child: Container(
            decoration: BoxDecoration(
              border:
                  Border.all(width: 3, color: flag ? Colors.green : Colors.red),
            ),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  flag = true;
                });
              },
              child: TextField(
                controller: textController,
                onTap: () {
                  setState(() {
                    flag = true;
                  });
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
