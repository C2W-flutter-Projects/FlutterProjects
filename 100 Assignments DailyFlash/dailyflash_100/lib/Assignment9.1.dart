import 'package:flutter/material.dart';

class Assignment9A extends StatelessWidget {
  const Assignment9A({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Wrap(
        // because Containers width doesnt reflect with listview .. for that we can also use stack or unconstraitbox
        children: [
          Container(
            margin: const EdgeInsets.all(15),
            width: 60,
            height: 60,
            color: Colors.red,
          ),
          Container(
            margin: const EdgeInsets.all(15),
            width: 60,
            height: 60,
            color: Colors.green,
          ),
          Container(
            margin: const EdgeInsets.all(15),
            width: 60,
            height: 60,
            color: Colors.blue,
          ),
          Container(
            margin: const EdgeInsets.all(15),
            width: 60,
            height: 60,
            color: Colors.amber,
          ),
          Container(
            margin: const EdgeInsets.all(15),
            width: 60,
            height: 60,
            color: Colors.orange,
          ),
        ],
      ),
    );
  }
}
