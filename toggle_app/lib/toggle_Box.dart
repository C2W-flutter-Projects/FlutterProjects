import 'package:flutter/material.dart';

class toggle_Box extends StatefulWidget {
  const toggle_Box({super.key});
  @override
  State<toggle_Box> createState() => toggle_BoxState();
}

class toggle_BoxState extends State<toggle_Box> {
  bool Box1Color = false;
  bool Box2Color = false;

  Color? ChangeBox1Color() {
    if (Box1Color == false) {
      return Colors.red;
    } else {
      return Colors.black;
    }
  }

  Color? ChangeBox2Color() {
    if (Box2Color == false) {
      return Colors.black;
    } else {
      return Colors.red;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Toggle_Box"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 100,
                color: ChangeBox1Color(),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    Box1Color = !Box1Color;
                  });
                },
                child: const Text("Change Box1Color"),
              ),
            ],
          ),
          const SizedBox(
            width: 20,
            height: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 100,
                color: ChangeBox2Color(),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    Box2Color = !Box2Color;
                  });
                },
                child: const Text("Change Box2Color"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
