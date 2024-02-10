import 'package:flutter/material.dart';

class DisplayImages1 extends StatefulWidget {
  const DisplayImages1({super.key});

  @override
  State createState() => _DisplayImages1();
}

class _DisplayImages1 extends State<DisplayImages1> {
  List<int> imageList = [0];
  int cnt = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Count list"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: imageList.length,
        itemBuilder: (context, index) {
          return Container(
            width: 50,
            height: 35,
            color: Colors.blue,
            alignment: Alignment.center,
            margin: const EdgeInsets.all(10),
            child: Text("${imageList[index]}"),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            setState(() {
              cnt++;
              imageList.add(cnt);
            });
          }),
    );
  }
}
