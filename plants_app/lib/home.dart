import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plants_app_ui/detail.dart';
import 'package:plants_app_ui/verification.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 248, 248, 248),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const VerificationPage()));
                      },
                      child: const Icon(Icons.arrow_back)),
                  const Spacer(),
                  SvgPicture.asset("assets/design2.svg")
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      "Find your favorite plants",
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 104,
                  ),
                  SvgPicture.asset(
                    "assets/cart.svg",
                    width: 80,
                    height: 80,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              margin: const EdgeInsets.all(10),
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    // margin: const EdgeInsets.all(10),
                    width: 340,
                    height: 130,
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromRGBO(204, 231, 185, 1),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 26, left: 27),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "30% OFF",
                                style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 30,
                                  bottom: 30,
                                  right: 50,
                                ),
                                child: Text(
                                  "02-23 April",
                                  style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromRGBO(0, 0, 0, 0.6)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Image.asset(
                                "assets/posterplant.png",
                                scale: 0.3,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SvgPicture.asset("assets/dots.svg"),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Indoor",
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 13),
              height: 200,
              color: const Color.fromARGB(255, 248, 248, 248),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 7,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Detail()));
                    },
                    child: Container(
                        width: 141,
                        height: 200,
                        color: Colors.white,
                        margin: const EdgeInsets.all(13),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [Image.asset("assets/small.jpg")],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 14.1),
                              child: Row(
                                children: [
                                  Text(
                                    "Snake Plants",
                                    style: GoogleFonts.dmSans(
                                      textStyle: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Color.fromRGBO(48, 48, 48, 1)),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 14.1, right: 11),
                              child: Row(
                                children: [
                                  Text(
                                    "₹350",
                                    style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w600,
                                          color:
                                              Color.fromRGBO(62, 102, 24, 1)),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        )),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Divider(),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Outdoor",
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 13),
              height: 188,
              color: const Color.fromARGB(255, 248, 248, 248),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 7,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                      width: 141,
                      height: 188,
                      color: Colors.white,
                      margin: const EdgeInsets.all(13),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [Image.asset("assets/small.jpg")],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 14.1),
                            child: Row(
                              children: [
                                Text(
                                  "Snake Plants",
                                  style: GoogleFonts.dmSans(
                                    textStyle: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromRGBO(48, 48, 48, 1)),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 14.1, right: 11),
                            child: Row(
                              children: [
                                Text(
                                  "₹350",
                                  style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w600,
                                        color: Color.fromRGBO(62, 102, 24, 1)),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
