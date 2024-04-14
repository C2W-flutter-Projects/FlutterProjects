import 'package:expense_manager/myutilities.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Trash extends StatefulWidget {
  const Trash({super.key});

  @override
  State<Trash> createState() => _TrashState();
}

class _TrashState extends State<Trash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Trash",
          style: GoogleFonts.poppins(
              textStyle:
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
        ),
      ),
      drawer: const MyDrawer(),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 6,
              itemBuilder: (context, index) {
                return Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                          color: Color.fromRGBO(206, 206, 206, 0.5),
                          width: 1.4),
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.remove_circle,
                            color: Colors.grey,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Medicine",
                                  style: GoogleFonts.poppins(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color: const Color.fromRGBO(0, 0, 0, 1)),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry... more",
                                  style: GoogleFonts.poppins(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: const Color.fromRGBO(0, 0, 0, 1)),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "500",
                                    style: GoogleFonts.poppins(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        color:
                                            const Color.fromRGBO(0, 0, 0, 1)),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "3 June | 11:50 AM",
                            style: GoogleFonts.poppins(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: const Color.fromRGBO(0, 0, 0, 0.6)),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
