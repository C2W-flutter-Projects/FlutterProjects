import 'package:flutter/material.dart';

class Assignment6A extends StatelessWidget {
  const Assignment6A({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DailyFlash Assignment 6.1"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Image.asset("assets/images/pizza.jpg"),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Pizza",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              "A cheese pizza is a classic Italian dish consisting of a thin or thick crust topped with a flavorful tomato sauce and melted mozzarella cheese.",
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.w400),
            ),
          ),
        ],
      ),
    );
  }
}
