import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class addtask extends StatefulWidget {
  const addtask({super.key});

  @override
  State<addtask> createState() => _addtaskState();
}

class _addtaskState extends State<addtask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "BottomSheet",
          style: GoogleFonts.quicksand(
              textStyle: const TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 26,
            color: Colors.white,
          )),
        ),
        backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
      ),
    );
  }
}
