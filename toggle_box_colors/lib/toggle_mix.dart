import 'package:flutter/material.dart';

class toggle_mix extends StatefulWidget {
  const toggle_mix({super.key});
  @override
  State<toggle_mix> createState() => _toggle_mixState();
}

class _toggle_mixState extends State<toggle_mix> {
  bool Box1Color = false;
  bool Box2Color = false;

  int Box1Count = 0;
  int Box2Count = 0;

  Color? changeBox1Color() {
    if (Box1Count == 1) {
      return Colors.red;
    } else if (Box1Count == 2) {
      return Colors.green;
    } else if (Box1Count == 3) {
      return Colors.blue;
    } else {
      return Colors.amber;
    }
  }

  Color? changeBox2Color() {
    if (Box2Count == 1) {
      return Colors.red;
    } else if (Box2Count == 2) {
      return Colors.green;
    } else if (Box2Count == 3) {
      return Colors.blue;
    } else {
      return Colors.amber;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("toggle mix RGB"),
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
                color: changeBox1Color(),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    Box1Count++;
                  });
                },
                child: const Text("Box1Color"),
              ),
            ],
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 100,
                color: changeBox2Color(),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    Box2Count++;
                  });
                },
                child: const Text("Box1Color"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
