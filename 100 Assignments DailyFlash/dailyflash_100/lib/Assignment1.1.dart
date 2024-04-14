import 'package:flutter/material.dart';

class AssignmentA extends StatelessWidget {
  const AssignmentA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        title: const Text("Appbar Assignment"),
        
        centerTitle: true,
        actions: const [
          Icon(Icons.favorite_outline),
        ],
        backgroundColor: Colors.blue,
      ),
    );
  }
}
