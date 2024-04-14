import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plants_app_ui/home.dart';
import 'package:plants_app_ui/login.dart';

class VerificationPage extends StatefulWidget {
  const VerificationPage({super.key});

  @override
  State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  TextEditingController one = TextEditingController();
  TextEditingController Two = TextEditingController();
  TextEditingController Three = TextEditingController();
  TextEditingController Four = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 248, 248, 248),
      body: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Login()));
                    },
                    child: const Icon(Icons.arrow_back)),
                const Spacer(),
                SvgPicture.asset("assets/rightImage.svg"),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Text(
                  "Verification",
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w700)),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 68.0),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      "Enter the OTP code from the phone we just sent you.",
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400)),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 34,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 56,
                    height: 56,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromRGBO(255, 255, 255, 1),
                        border: Border.all(
                            color: const Color.fromRGBO(204, 211, 196, 1),
                            width: 1),
                        boxShadow: const [
                          BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.06),
                              blurRadius: 20,
                              offset: Offset(0, 8)),
                        ]),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: TextField(
                          controller: one,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                          ),
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 28,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 56,
                    height: 56,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromRGBO(255, 255, 255, 1),
                        border: Border.all(
                            color: const Color.fromRGBO(204, 211, 196, 1),
                            width: 1),
                        boxShadow: const [
                          BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.06),
                              blurRadius: 20,
                              offset: Offset(0, 8)),
                        ]),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: TextField(
                          controller: Two,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                          ),
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 28,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 56,
                    height: 56,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromRGBO(255, 255, 255, 1),
                        border: Border.all(
                            color: const Color.fromRGBO(204, 211, 196, 1),
                            width: 1),
                        boxShadow: const [
                          BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.06),
                              blurRadius: 20,
                              offset: Offset(0, 8)),
                        ]),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: TextField(
                          controller: Three,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                          ),
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 28,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 56,
                    height: 56,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromRGBO(255, 255, 255, 1),
                        border: Border.all(
                            color: const Color.fromRGBO(204, 211, 196, 1),
                            width: 1),
                        boxShadow: const [
                          BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.06),
                              blurRadius: 20,
                              offset: Offset(0, 8)),
                        ]),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: TextField(
                          controller: Four,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                          ),
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 28,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 34,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Don’t receive OTP code!",
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w400)),
                ),
                Text(
                  " Resend",
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w500)),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const VerificationPage()));
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Home()));
                  },
                  child: Container(
                    width: 360,
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
                          "Submit",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.rubik(
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                  color: Color.fromRGBO(255, 255, 255, 1))),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
