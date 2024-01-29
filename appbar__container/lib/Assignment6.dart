// ignore: file_names
import 'package:flutter/material.dart';

class Assignment6 extends StatelessWidget {
  const Assignment6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment6"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 0),
                color: Colors.orange,
                height: 150,
                width: 150,
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 0),
                color: Colors.purple,
                height: 150,
                width: 150,
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 0),
                color: Colors.red,
                height: 150,
                width: 150,
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 0),
                color: Colors.amber,
                height: 150,
                width: 150,
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 0),
                color: Colors.black,
                height: 150,
                width: 150,
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 0),
                color: Colors.cyan,
                height: 150,
                width: 150,
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 0),
                color: Colors.brown,
                height: 150,
                width: 150,
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 0),
                color: Colors.green,
                height: 150,
                width: 150,
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 0),
                color: Colors.pink,
                height: 150,
                width: 150,
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 0),
                color: Colors.lime,
                height: 150,
                width: 150,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
