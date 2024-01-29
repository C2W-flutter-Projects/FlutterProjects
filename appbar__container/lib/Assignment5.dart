import 'package:flutter/material.dart';

class Assignment5 extends StatelessWidget {
  const Assignment5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hello Core2Web"),
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/thumbnail.png",
                width: 150,
                height: 150,
              ),
              Image.asset(
                "assets/Rajasthan.png",
                width: 150,
                height: 150,
              ),
              Image.asset(
                "assets/shanivarWada.jpg",
                width: 150,
                height: 150,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
