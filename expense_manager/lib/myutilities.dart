import 'package:expense_manager/catagoryscreen.dart';
import 'package:expense_manager/graph.dart';
import 'package:expense_manager/home_screen.dart';
import 'package:expense_manager/trash.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyDrawerState();
  }
}

int flg = 0;

class _MyDrawerState extends State {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 216,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: EdgeInsets.only(left: 16),
              child: Row(
                children: [
                  Text(
                    "Expense Manager",
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromRGBO(33, 33, 33, 1)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Row(
                children: [
                  Text(
                    "Saves all your Transactions",
                    style: GoogleFonts.poppins(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(33, 33, 33, 1)),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 11,
            ),
            GestureDetector(
              onTap: () {
                flg = 0;
                setState(() {});

                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ));
              },
              child: Container(
                padding: const EdgeInsets.only(
                    left: 16, top: 8, bottom: 8, right: 45),
                decoration: BoxDecoration(
                    color: flg == 0
                        ? const Color.fromRGBO(14, 161, 125, 0.15)
                        : null,
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SvgPicture.asset(
                      "assets/SVGImages/transaction.svg",
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    Text(
                      "Transaction",
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: flg == 0
                              ? const Color.fromRGBO(14, 161, 125, 1)
                              : const Color.fromRGBO(33, 33, 33, 1)),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            GestureDetector(
              onTap: () {
                flg = 1;
                setState(() {});

                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Graph(),
                    ));
              },
              child: Container(
                padding: const EdgeInsets.only(
                    left: 16, top: 8, bottom: 8, right: 45),
                decoration: BoxDecoration(
                    color: flg == 1
                        ? const Color.fromRGBO(14, 161, 125, 0.15)
                        : null,
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SvgPicture.asset(
                      "assets/SVGImages/pie_chart.svg",
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    Text(
                      "Graphs",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: flg == 1
                            ? const Color.fromRGBO(14, 161, 125, 1)
                            : const Color.fromRGBO(33, 33, 33, 1),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            GestureDetector(
              onTap: () {
                flg = 2;
                setState(() {});

                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CategoryPage(),
                    ));
              },
              child: Container(
                padding: const EdgeInsets.only(
                    left: 16, top: 8, bottom: 8, right: 45),
                decoration: BoxDecoration(
                    color: flg == 2
                        ? const Color.fromRGBO(14, 161, 125, 0.15)
                        : null,
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SvgPicture.asset(
                      "assets/SVGImages/category.svg",
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    Text(
                      "Category",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: flg == 2
                            ? const Color.fromRGBO(14, 161, 125, 1)
                            : const Color.fromRGBO(33, 33, 33, 1),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            GestureDetector(
              onTap: () {
                flg = 3;
                setState(() {});

                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Trash(),
                    ));
              },
              child: Container(
                padding: const EdgeInsets.only(
                    left: 16, top: 8, bottom: 8, right: 45),
                decoration: BoxDecoration(
                    color: flg == 3
                        ? const Color.fromRGBO(14, 161, 125, 0.15)
                        : null,
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SvgPicture.asset(
                      "assets/SVGImages/trash.svg",
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    Text(
                      "Trash",
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: flg == 3
                              ? const Color.fromRGBO(14, 161, 125, 1)
                              : const Color.fromRGBO(33, 33, 33, 1)),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            GestureDetector(
              onTap: () {
                flg = 4;
                setState(() {});
              },
              child: Container(
                padding: const EdgeInsets.only(
                    left: 16, top: 8, bottom: 8, right: 45),
                decoration: BoxDecoration(
                    color: flg == 4
                        ? const Color.fromRGBO(14, 161, 125, 0.15)
                        : null,
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SvgPicture.asset(
                      "assets/SVGImages/person.svg",
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    Text(
                      "About Us",
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: flg == 4
                              ? const Color.fromRGBO(14, 161, 125, 1)
                              : const Color.fromRGBO(33, 33, 33, 1)),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
