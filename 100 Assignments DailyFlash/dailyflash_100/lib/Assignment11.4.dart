import 'package:flutter/material.dart';

class Assignment11D extends StatefulWidget {
  @override
  _Assignment11DState createState() => _Assignment11DState();
}

class _Assignment11DState extends State<Assignment11D> {
  final TextEditingController _textEditingController = TextEditingController();
  int count = 0;
  final int limit = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DailyFlash'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _textEditingController,
              maxLength: limit,
              onChanged: (value) {
                setState(() {
                  count = value.length;
                });
              },
              decoration: InputDecoration(
                hintText: 'Enter your text here (Max 20 characters)',
                counterText: '$count/$limit',
                counterStyle: TextStyle(
                  color: count <= limit ? Colors.black : Colors.red,
                ),
                hintStyle: TextStyle(
                  fontSize: 16.0,
                  color: Colors.grey[400],
                  fontWeight: FontWeight.normal,
                ),
                border: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                    width: 2.0,
                  ),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                    width: 2.0,
                  ),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blue,
                    width: 2.0,
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
