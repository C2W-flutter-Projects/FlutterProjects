import 'package:expense_manager/log_in.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const LogIn()));
              },
              child: Container(
                height: 144,
                width: 144,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(234, 238, 235, 1),
                  shape: BoxShape.circle,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 42.21, left: 36.7, right: 37.54, bottom: 42.97),
                  child: SvgPicture.asset("assets/wallet.svg"),
                ),
              ),
            ),
            const Spacer(),
            Text(
              "Expense Manager",
              style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(0, 0, 0, 1))),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
