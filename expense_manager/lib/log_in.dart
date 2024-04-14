import 'package:expense_manager/home_screen.dart';
import 'package:expense_manager/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  TextEditingController nameController = TextEditingController();
  TextEditingController uesernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 86, left: 40, right: 40),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset("assets/logo.svg"),
              ],
            ),
            const SizedBox(
              height: 59.81,
            ),
            Row(
              children: [
                Text(
                  "Login To Your Account",
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w500)),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Form(
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(255, 255, 255, 1),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.15),
                          blurRadius: 10,
                          offset: Offset(0, 10),
                        ),
                      ],
                    ),
                    child: TextFormField(
                      controller: nameController,
                      decoration: const InputDecoration(
                        hintText: 'Username',
                        hintStyle:
                            TextStyle(color: Color.fromRGBO(0, 0, 0, 0.4)),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                      ),
                      validator: (value) {
                        if (value == null) {
                          return "please Enter Username";
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(255, 255, 255, 1),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.15),
                          blurRadius: 10,
                          offset: Offset(0, 10),
                        ),
                      ],
                    ),
                    child: TextFormField(
                      controller: nameController,
                      decoration: const InputDecoration(
                        hintText: 'Password',
                        hintStyle:
                            TextStyle(color: Color.fromRGBO(0, 0, 0, 0.4)),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                      ),
                      validator: (value) {
                        if (value == null) {
                          return "please Enter Password";
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()));
                    },
                    child: Container(
                      height: 50,
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(14, 161, 125, 1),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Center(
                        child: Text(
                          "Log In",
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don’t have an account?",
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontSize: 12, fontWeight: FontWeight.w400)),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignUp()));
                  },
                  child: Text(
                    " Sign Up",
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.blue)),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
