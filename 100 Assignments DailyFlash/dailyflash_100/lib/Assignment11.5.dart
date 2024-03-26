import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

class Assignment11E extends StatefulWidget {
  const Assignment11E({super.key});

  @override
  State<Assignment11E> createState() => _Assignment11EState();
}

class _Assignment11EState extends State<Assignment11E> {
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: textController,
              cursorColor: Colors.red,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.only(top: 150, bottom: 150),
                labelText: "Enter Text Here",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
