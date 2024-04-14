import 'package:flutter/material.dart';
import 'package:todo_advanced/databases.dart';

import 'package:todo_advanced/register.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  database = await createDB();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: RegisterPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
