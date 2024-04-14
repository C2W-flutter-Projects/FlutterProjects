import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plants_app_ui/login.dart';

class StartingPage extends StatelessWidget {
  const StartingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 248, 248, 248),
      body: Padding(
        padding: const EdgeInsets.only(top: 50.0),
        child: Column(
          children: [
            SizedBox(height: 464, child: Image.asset("assets/plant.png")),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 30),
              width: 260,
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Enjoy your",
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 34.22,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(0, 0, 0, 1))),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "life with",
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                fontSize: 34.22,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(0, 0, 0, 1))),
                      ),
                      Text(
                        " Plants",
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(0, 0, 0, 1))),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Login()));
              },
              child: Container(
                width: 320,
                height: 50,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: const LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Color.fromRGBO(62, 102, 24, 1),
                      Color.fromRGBO(124, 180, 70, 1),
                    ],
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Get Started",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.rubik(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              color: Color.fromRGBO(255, 255, 255, 1))),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.white,
                      size: 24,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
