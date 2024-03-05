import 'package:flutter/material.dart';

import 'newPage.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: widget_life_cycle(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class widget_life_cycle extends StatefulWidget {
  const widget_life_cycle({super.key});

  @override
  State<widget_life_cycle> createState() => _widget_life_cycleState();
}

class _widget_life_cycleState extends State<widget_life_cycle> {
  @override
  void initState() {
    super.initState();
    print("In the InitState()");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("in didChangeDependencies()");
  }

  @override
  Widget build(BuildContext context) {
    print("In build()");
    return MaterialApp(
      home: newPage(),
    );
  }

  @override
  void didUpdateWidget(oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("In didUpdateWidgets()");
  }

  @override
  void deactivate() {
    super.deactivate();
    print("Inside Deactivate()");
  }

  @override
  void dispose() {
    super.dispose();
    print("Inside Dispose");
  }
}
