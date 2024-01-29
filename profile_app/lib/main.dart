import 'package:flutter/material.dart';
import 'package:profile_app/portfolio.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: portfolio(),
      debugShowCheckedModeBanner: false,
    );
  }
}
