import 'package:flutter/material.dart';

class Assignment1 extends StatelessWidget {
  const Assignment1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MyAppBar"),
        actions: [
          const Icon(
            Icons.favorite_border_outlined,
            color: Colors.white,
          ),
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
