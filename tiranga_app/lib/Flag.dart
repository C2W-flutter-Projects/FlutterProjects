import 'package:flutter/material.dart';

class Flag extends StatelessWidget {
  const Flag({super.key});

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
                Container(
                  decoration: BoxDecoration(
                    color: Colors.brown,
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  width: 10,
                  height: 650,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 40,
                ),
                Container(
                  foregroundDecoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 0.2,
                    ),
                  ),
                  height: 60,
                  width: 280,
                  color: Colors.orange,
                ),
                Container(
                  child: Image.network(
                    "https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/Ashoka_Chakra.svg/1200px-Ashoka_Chakra.svg.png",
                    height: 10,
                    width: 10,
                  ),
                  foregroundDecoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 0.2,
                    ),
                  ),
                  height: 60,
                  width: 280,
                  color: Colors.white,
                ),
                Container(
                  foregroundDecoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 0.2,
                    ),
                  ),
                  height: 60,
                  width: 280,
                  color: Colors.green,
                ),
                SizedBox(
                  height: 60,
                ),
                ElevatedButton(
                  onPressed: () {},
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
