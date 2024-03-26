import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

class Assignment11C extends StatefulWidget {
  const Assignment11C({super.key});

  @override
  State<Assignment11C> createState() => _Assignment11CState();
}

class _Assignment11CState extends State<Assignment11C> {
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
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(left: 160),
            fillColor: Colors.amber,
            filled: true,
            hintText: "Enter Text Here",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: Colors.black,
              ),
            ),
          ),
        )),
      ),
    );
  }
}
