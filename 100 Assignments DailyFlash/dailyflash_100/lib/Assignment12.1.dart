import 'package:flutter/material.dart';

class Assignment12A extends StatefulWidget {
  const Assignment12A({super.key});

  @override
  State<Assignment12A> createState() => _Assignment12AState();
}

class _Assignment12AState extends State<Assignment12A> {
  bool flag = false;
  TextEditingController textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DailyFlash"),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Center(
          child: TextField(
            controller: textController,
            obscureText: flag,
            decoration: InputDecoration(
              hintText: "Enter Password",
              suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      flag = !flag;
                    });
                  },
                  child: const Icon(Icons.remove_red_eye)),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Colors.black),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
