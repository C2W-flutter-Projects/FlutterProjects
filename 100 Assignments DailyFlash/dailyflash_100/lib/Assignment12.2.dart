import 'package:flutter/material.dart';

class Assignment12B extends StatefulWidget {
  const Assignment12B({super.key});

  @override
  State<Assignment12B> createState() => _Assignment12BState();
}

class _Assignment12BState extends State<Assignment12B> {
  TextEditingController textController = TextEditingController();
  String str = "";
  List<String> days = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DailyFlash"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              controller: textController,
              onSubmitted: (value) {
                setState(() {
                  addDays();
                  str = str + textController.text;
                  setState(() {});
                });
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.black),
                ),
              ),
            ),
          ),
          Text("[ " + days.join(" , ") + "]"),
        ],
      ),
    );
  }

  void addDays() {
    setState(() {
      if (textController.text.isNotEmpty) {
        days.add(textController.text);
        textController.clear();
      }
    });
  }
}
