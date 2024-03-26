import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Assignment11B extends StatefulWidget {
  const Assignment11B({super.key});

  @override
  State<Assignment11B> createState() => _Assignment11BState();
}

class _Assignment11BState extends State<Assignment11B> {
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
            width: 400,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 2, color: Colors.black),
            ),
            child: TextField(
              controller: textController,
              decoration: InputDecoration(
                suffixIcon: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (flag) Container(),
                    const SizedBox(
                      width: 10,
                    ),
                    if (flag) const Icon(Icons.search),
                    const Icon(Icons.lock),
                  ],
                ),
              ),
              onTap: () {
                setState(() {
                  flag = true;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
