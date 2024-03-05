import 'package:flutter/material.dart';

class newPage extends StatefulWidget {
  const newPage({super.key});

  @override
  State<newPage> createState() => _newPageState();
}

class _newPageState extends State<newPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Widget Lifecycle!"),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.push(context , builder: (context)=> const _widget_life_cycleState()),
              }, 
              child: const Text("Cick to close this page"),
              ),
        ],
      ),
    );
  }
}
