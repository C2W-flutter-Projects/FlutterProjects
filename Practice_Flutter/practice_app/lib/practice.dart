import 'dart:ui';
import 'package:gap/gap.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class practice extends StatefulWidget {
  const practice({super.key});

  @override
  State<practice> createState() => _practiceState();
}

class _practiceState extends State<practice> {
  var _overlayController = OverlayPortalController();
  String dropdownValue = "One";
  Widget buildDropDownMenuButton() {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_drop_down_rounded),
      style: const TextStyle(color: Colors.black),
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
      items: const [
        DropdownMenuItem<String>(
          value: 'One',
          child: Text("One"),
        ),
        DropdownMenuItem<String>(
          value: 'Two',
          child: Text("Two"),
        ),
        DropdownMenuItem<String>(
          value: 'Three',
          child: Text("Three"),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: const Text("Practice"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
// or shorthand:
                Column(
                  children: [Text("Hello!"), Text("This is Blink Animation")]
                      .animate(
                        interval: 2000.ms,
                        delay: 500.ms,
                        onPlay: (controller) => controller.repeat(),
                      )
                      .fadeIn(delay: 500.ms)
                      .tint(color: Colors.purple)
                      .fade(duration: 300.ms),
                ),
                Container(
                    child: Text("<-")
                        .animate(
                          onPlay: (controller) => controller.repeat(),
                        )
                        .fadeIn(duration: 600.ms)
                        .then(delay: 200.ms) // baseline=800ms
                        .slideY()),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: 450,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Enter Text',
                        border: OutlineInputBorder(),
                        suffixIcon: buildDropDownMenuButton(),
                      ),
                      onChanged: (value) {
                        print('text changed : $value');
                      },
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 100,
                  child: ElevatedButton(
                    onPressed: _overlayController.toggle,
                    child: OverlayPortal(
                      controller: _overlayController,
                      overlayChildBuilder: (BuildContext context) {
                        return const Text(
                          "I am an Overlay!",
                          textAlign: TextAlign.center,
                        );
                      },
                      child: Text("Press Me!"),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                ),
                Gap(10),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.blue,
                ),
                Gap(10),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.green,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
