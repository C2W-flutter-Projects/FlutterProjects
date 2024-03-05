import 'package:flutter/material.dart';

class AssignmentB extends StatefulWidget {
  const AssignmentB({super.key});

  @override
  State<AssignmentB> createState() => _AssignmentBState();
}

class _AssignmentBState extends State<AssignmentB> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[100],
        leading: Icon(Icons.access_alarms_sharp),
        actions: const [
          Icon(Icons.paypal_rounded),
          SizedBox(
            width: 20,
          ),
          Icon(Icons.accessibility_new_sharp),
          SizedBox(
            width: 20,
          ),
          Icon(Icons.account_balance),
        ],
      ),
    );
  }
}
