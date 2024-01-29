import 'package:flutter/material.dart';

class createFlag extends StatefulWidget {
  const createFlag({super.key});

  @override
  State<createFlag> createState() => _createFlagState();
}

class _createFlagState extends State<createFlag> {
  int? count = 0;
  //final List<Widget> list = [];

  void showNextFlagPart() {
    setState(() {
      count = count! + 1; // To Handle the Range Index OutOfBounds Error
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Happy Republic day",
          ),
        ),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              width: 60,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 10,
                ),
                //vertical brown bar
                (count! > 1)
                    ? Container(
                        decoration: BoxDecoration(
                          color: Colors.brown,
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        width: 10,
                        height: 650,
                      )
                    : Container(),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 40,
                ),

                //orange container
                (count! > 2)
                    ? Container(
                        foregroundDecoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            width: 0.2,
                          ),
                        ),
                        height: 60,
                        width: 280,
                        color: Colors.orange,
                      )
                    : Container(),

                //white container with image
                (count! > 3)
                    ? Container(
                        child: (count! > 4)
                            ? Container(
                                child: Image.network(
                                  "https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/Ashoka_Chakra.svg/1200px-Ashoka_Chakra.svg.png",
                                  height: 10,
                                  width: 10,
                                ),
                              )
                            : Container(),
                        foregroundDecoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            width: 0.2,
                          ),
                        ),
                        height: 60,
                        width: 280,
                        color: Colors.white,
                      )
                    : Container(),

                //green container with image
                (count! > 5)
                    ? Container(
                        foregroundDecoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            width: 0.2,
                          ),
                        ),
                        height: 60,
                        width: 280,
                        color: Colors.green,
                      )
                    : Container(),
                SizedBox(
                  height: 60,
                ),
                //Button
                ElevatedButton(
                  onPressed: showNextFlagPart,
                  child: const Text("Create Flag"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
