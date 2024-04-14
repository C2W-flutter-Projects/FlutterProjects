import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plants_app_ui/home.dart';

class Detail extends StatefulWidget {
  const Detail({super.key});

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 28.0, left: 28),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Home()));
                    },
                    child: const Icon(Icons.arrow_back)),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.only(top: 100),
                width: 395,
                height: 443.75,
                child: Image.asset(
                  "assets/big.jpg",
                  scale: 0.8,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          SvgPicture.asset("assets/dots.svg"),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 31.0),
            child: Row(
              children: [
                Text(
                  "Snake Plants",
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(48, 48, 48, 1)),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 31.0, right: 34.6),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    "Plansts make your life with minimal and happy love the plants more and enjoy life.",
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(48, 48, 48, 1)),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 37,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 340,
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromRGBO(118, 152, 75, 1)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 11.0, top: 24, right: 11.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SvgPicture.asset("assets/height.svg"),
                          SvgPicture.asset("assets/temp.svg"),
                          SvgPicture.asset("assets/pot.svg"),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 24.0, top: 15, right: 27),
                                child: Row(
                                  children: [
                                    Text(
                                      "Total Price",
                                      style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 24.0, right: 18),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "₹ 350",
                                      style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(right: 20),
                                    width: 150,
                                    height: 49,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color:
                                          const Color.fromRGBO(103, 133, 74, 1),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 15.0, right: 10),
                                      child: Row(
                                        children: [
                                          SvgPicture.asset(
                                              "assets/shopping-bag.svg"),
                                          const SizedBox(
                                            width: 20,
                                          ),
                                          Text(
                                            "Add To Cart",
                                            style: GoogleFonts.rubik(
                                              textStyle: const TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
