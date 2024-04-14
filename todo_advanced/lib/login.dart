import 'package:flutter/material.dart';
import 'package:todo_advanced/databases.dart';
import 'package:todo_advanced/register.dart';
import 'package:todo_advanced/todo.dart';
import 'requiredClasses.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool flag = false;
  dynamic database;

  List<SingleChildUserInfo> data = [];

  @override
  void initState() {
    super.initState();
    database = createDB();
  }

  void _showSuccessSnackbar() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        backgroundColor: Colors.green,
        behavior: SnackBarBehavior.floating,
        margin: EdgeInsets.only(top: 70, left: 20, right: 20, bottom: 20),
        content: Text('Logged in Successfully',
            style: TextStyle(color: Colors.white)),
        duration: Duration(seconds: 2),
      ),
    );

    Future.delayed(const Duration(seconds: 1), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Todo()),
      );
    });
  }

  void _submitForm() async {
    if (_formKey.currentState!.validate()) {
      data = await fetchUserData();

      for (int i = 0; i < data.length; i++) {
        if (data[i].userName == _usernameController.text.trim() &&
            data[i].password == _passwordController.text) {
          flag = true;
        }
      }
      // print(data);
      if (flag) {
        _showSuccessSnackbar();
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            backgroundColor: Colors.red,
            behavior: SnackBarBehavior.floating,
            margin: EdgeInsets.only(top: 70, left: 20, right: 20, bottom: 20),
            content: Text('Invalid Login Credentials',
                style: TextStyle(color: Colors.white)),
            duration: Duration(seconds: 2),
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/login.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Center(
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 40),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              // Text(
                              //   "Welcome Back !",
                              //   style: GoogleFonts.quicksand(
                              //       fontSize: 32,
                              //       fontWeight: FontWeight.w800,
                              //       color: Colors.black),
                              // ),
                              SizedBox(
                                  height: 80,
                                  width: 190,
                                  child: Image.network(
                                    "https://logowik.com/content/uploads/images/todo-group3144.logowik.com.webp",
                                    fit: BoxFit.cover,
                                  )),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 80,
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.transparent,
                            boxShadow: [
                              BoxShadow(
                                color: const Color.fromARGB(0, 243, 242, 242)
                                    .withOpacity(0.7),
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: ListView(
                              shrinkWrap: true,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Login",
                                      style: GoogleFonts.quicksand(
                                          fontSize: 49,
                                          fontWeight: FontWeight.w800,
                                          color: Colors.black),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 50,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: TextFormField(
                                    controller: _usernameController,
                                    decoration: InputDecoration(
                                      prefixIcon: const Icon(Icons.person),
                                      hintText: "Username",
                                      border: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Colors.black),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ),
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return 'Please enter your username';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: TextFormField(
                                    controller: _passwordController,
                                    obscureText: flag,
                                    obscuringCharacter: "•",
                                    decoration: InputDecoration(
                                      prefixIcon: const Icon(Icons.key),
                                      hintText: 'Password',
                                      suffixIcon: IconButton(
                                          onPressed: () {
                                            setState(() {
                                              flag = !flag;
                                            });
                                          },
                                          icon: const Icon(
                                              Icons.remove_red_eye_outlined)),
                                      border: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Colors.black),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ),
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return 'Please enter your password';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                                const SizedBox(height: 40),
                                ElevatedButton(
                                  style: const ButtonStyle(
                                      backgroundColor: MaterialStatePropertyAll(
                                          Colors.cyan)),
                                  onPressed: _submitForm,
                                  child: const Text(
                                    'Login',
                                    style: TextStyle(
                                        fontSize: 19,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black),
                                  ),
                                ),
                                const SizedBox(
                                  height: 40,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const RegisterPage()));
                                  },
                                  child: const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "New Here? Click To Register",
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
