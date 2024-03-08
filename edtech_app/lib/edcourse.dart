import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Edcourse extends StatefulWidget {
  const Edcourse({super.key});

  @override
  State<Edcourse> createState() => EedcourseState();
}

class EedcourseState extends State<Edcourse> {
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(205, 218, 218, 1),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 47, left: 23, right: 23),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.menu,
                      size: 26,
                    ),
                    const Spacer(),
                    Icon(
                      Icons.notifications_outlined,
                      size: 26,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Welcome to New",
                            style: TextStyle(
                                fontSize: 27, fontWeight: FontWeight.w300),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Educourse",
                            style: TextStyle(
                                fontSize: 37, fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: TextField(
                    controller: searchController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.search_outlined,
                          size: 27,
                        ),
                      ),
                      hintText: 'Enter Your Keyword',
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Flexible(
            child: Container(
              padding: EdgeInsets.only(top: 30, left: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Course For You",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 240,
                            height: 294,
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              gradient: LinearGradient(colors: [
                                Color.fromRGBO(197, 4, 98, 1),
                                Color.fromRGBO(80, 3, 112, 1)
                              ]),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 20, left: 22, right: 18),
                              child: Column(
                                children: [
                                  const Text(
                                    "UX Designer from Scratch.",
                                    style: TextStyle(
                                        fontSize: 19,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white),
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  SvgPicture.asset(
                                    "assets/svg/img1.svg",
                                    width: 190,
                                    height: 190,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                                top: 20, left: 22, right: 18),
                            width: 240,
                            height: 294,
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              gradient: LinearGradient(colors: [
                                Color.fromRGBO(0, 77, 228, 1),
                                Color.fromRGBO(1, 47, 135, 1),
                              ]),
                            ),
                            child: Column(
                              children: [
                                const Text(
                                  "Design Thinking The Beginner",
                                  style: TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                SvgPicture.asset(
                                  "assets/svg/img2.svg",
                                  width: 190,
                                  height: 190,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        "Course By Category",
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(
                      10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10),
                              height: 51,
                              width: 51,
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(25, 0, 56, 1),
                                  borderRadius: BorderRadius.circular(12)),
                              child: SvgPicture.asset(
                                "assets/svg/icon1.svg",
                                height: 15,
                                width: 15,
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              "UI/UX",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        // const SizedBox(
                        //   width: 49,
                        // ),
                        Column(
                          children: [
                            const SizedBox(
                              width: 28,
                            ),
                            Container(
                              padding: const EdgeInsets.all(10),
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(25, 0, 56, 1),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: SvgPicture.asset(
                                "assets/svg/icon2.svg",
                                height: 15,
                                width: 15,
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              "VISUAL",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        // const SizedBox(
                        //   width: 49,
                        // ),
                        Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10),
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(25, 0, 56, 1),
                                  borderRadius: BorderRadius.circular(12)),
                              child: SvgPicture.asset(
                                "assets/svg/icon3.svg",
                                height: 15,
                                width: 15,
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              "ILLUSTRATION",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        // const SizedBox(
                        //   width: 49,
                        // ),
                        Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10),
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(25, 0, 56, 1),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: SvgPicture.asset(
                                "assets/svg/icon4.svg",
                                height: 15,
                                width: 15,
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              "PHOTO",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        // const SizedBox(
                        //   width: 28,
                        // ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
