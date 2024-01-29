import 'package:flutter/material.dart';
// import 'package:tiranga_app/createFlag.dart';

import 'createFlag.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: createFlag(),
    );
  }
}
