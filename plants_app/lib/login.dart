import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plants_app_ui/verification.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SvgPicture.asset(
                  "assets/design.svg",
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Login",
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        fontSize: 30, fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.all(15),
              child: TextField(
                controller: phoneController,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: const Icon(
                      Icons.local_phone_outlined,
                      size: 17,
                      color: Color.fromRGBO(164, 164, 164, 1),
                    ),
                    hintText: 'Mobile Number',
                    hintStyle:
                        const TextStyle(color: Colors.grey, fontSize: 13),
                    iconColor: const Color.fromRGBO(164, 164, 164, 1),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )),
                keyboardType: TextInputType.number,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const VerificationPage()));
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
                      "Log in",
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
            const SizedBox(
              height: 53,
            ),
            Container(
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.white,
                  ),
                ],
              ),
              child: Container(
                margin: const EdgeInsets.only(top: 20),
                width: double.infinity,
                alignment: Alignment.center,
                child: Image.asset(
                  "assets/plant2.png",
                  scale: 0.9,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
