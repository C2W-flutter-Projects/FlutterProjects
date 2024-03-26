import 'package:flutter/material.dart';

class Assignment8A extends StatelessWidget {
  const Assignment8A({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[50],
        actions: [
          Container(
            margin: const EdgeInsets.all(10),
            height: 100,
            width: 100,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromARGB(255, 168, 200, 255),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 50, left: 50, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 190,
                      width: 180,
                      color: const Color.fromARGB(255, 245, 219, 139),
                    ),
                    Container(
                      height: 190,
                      width: 180,
                      color: const Color.fromARGB(255, 252, 166, 100),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20, left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 170,
                      width: 410,
                      color: const Color.fromARGB(255, 136, 248, 140),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 190,
                      width: 180,
                      color: const Color.fromARGB(255, 191, 131, 248),
                    ),
                    Container(
                      height: 190,
                      width: 180,
                      color: const Color.fromARGB(255, 128, 204, 251),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
