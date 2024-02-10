import 'package:flutter/material.dart';

class displayimg extends StatefulWidget {
  const displayimg({super.key});

  @override
  State<displayimg> createState() => displayimgState();
}

class displayimgState extends State<displayimg> {
  List<String> ImageList = [
    "https://th.bing.com/th/id/OIP.avxhtQqr5FoubGjq4sIXugHaEo?rs=1&pid=ImgDetMain",
    "https://th.bing.com/th/id/OIP.avxhtQqr5FoubGjq4sIXugHaEo?rs=1&pid=ImgDetMain",
    "https://th.bing.com/th/id/OIP.avxhtQqr5FoubGjq4sIXugHaEo?rs=1&pid=ImgDetMain"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Dynamic List"),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: ImageList.length,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.all(10),
              child: Image.network(
                ImageList[index],
              ),
            );
          },
        ));
  }
}
