import 'package:flutter/material.dart';

class Assignment2 extends StatelessWidget {
  const Assignment2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "MyAppBar",
            ),
          ],
        ),
        actions: [
          SizedBox(
            width: 20,
          ),
          const Icon(
            Icons.account_balance_rounded,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
