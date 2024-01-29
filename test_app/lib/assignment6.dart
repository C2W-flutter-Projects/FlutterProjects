import 'package:flutter/material.dart';

class Assignment6 extends StatefulWidget {
  const Assignment6({super.key});
  @override
  State<Assignment6> createState() => _Assignment6State();
}

class _Assignment6State extends State<Assignment6> {
  //variable
  int? selectedIndex = 0;
  //List of Images
  final List<String> imageList = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOiWilBgyzYs3NBNqXuLz8dW1dbG57D6qCsQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQzg1aqbdvpH7WefolP-miJbjlw06-KIzJ5nw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_wqM_cMqd6G6o-4PZPnuGvXXYMj2bJNyBPg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQiyj7Uohf5Qfg94pjtLi_2uwWJrmTpYP6UwLCxuqGzAiUZpJGiwxxXxg85l1Qprirj7gs&usqp=CAU",
  ];
  void showNextImage() {
    setState(() {
      if (selectedIndex == imageList.length - 1) {
        selectedIndex = -1; // To Handle the Range Index OutOfBounds Error
      }
      selectedIndex = selectedIndex! + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Display Images",
        ),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            imageList[selectedIndex!],
            width: 300,
            height: 300,
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: showNextImage,
            child: const Text(
              "Next",
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                selectedIndex = 0;
              });
            },
            child: const Text("Reset"),
          ),
        ],
      )),
    );
  }
}
