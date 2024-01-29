import 'package:flutter/material.dart';

class Assignment1 extends StatefulWidget {
  const Assignment1({super.key});

  @override
  State<Assignment1> createState() => _Assignment1State();
}

class _Assignment1State extends State<Assignment1> {
  //variable
  int countOfPalindrome = 0;
  int countOfArmStrong = 0;
  int countOfStrong = 0;

  //List of Numbers
  final List<int> list = [101, 122, 212, 111, 313, 153, 145, 1];

  void checkPalindrome(int n) {
    int temp = n;
    int sum = 0;
    while (n > 0) {
      int rem = n % 10;
      sum = (sum * 10) + rem;
      n = n ~/ 10;
    }
    if (sum == temp) {
      countOfPalindrome = countOfPalindrome + 1;
    }
  }

  void countPalindrome() {
    for (int i in list) {
      checkPalindrome(i);
    }
  }

  void checkArmStrong(int n) {
    int temp = n;
    int sum = 0;

    while (n > 0) {
      int rem = n % 10;
      sum = sum + rem * rem * rem;
      n = n ~/ 10;
    }
    if (temp == sum) {
      countOfArmStrong = countOfArmStrong + 1;
    }
  }

  void countArmStrong() {
    for (int i in list) {
      checkArmStrong(i);
    }
  }

  int factorial(int n) {
    int fact = 1;
    for (int i = 1; i <= n; i++) {
      fact = fact * i;
    }
    return fact;
  }

  void checkStrong(int n) {
    int temp = n;
    int sum = 0;
    while (n != 0) {
      int rem = n % 10;
      sum = sum + factorial(rem);
      n = n ~/ 10;
    }
    if (sum == temp) {
      countOfStrong = countOfStrong + 1;
    }
  }

  void countStrong() {
    for (int i in list) {
      checkStrong(i);
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Check Palindrome",
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),

            // Code for Palindrome
            ElevatedButton(
              onPressed: () {
                setState(() {
                  countOfPalindrome = 0;
                  countPalindrome();
                });
              },
              child: const Text("Get Palindrome count"),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "count of Palindrome : $countOfPalindrome",
            ),
            SizedBox(
              height: 80,
            ),
            //code for Armstrong
            ElevatedButton(
              onPressed: () {
                setState(() {
                  countOfArmStrong = 0;
                  countArmStrong();
                });
              },
              child: const Text("Get ArmStrong count"),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "count of ArmStrong : $countOfArmStrong",
            ),
            SizedBox(
              height: 80,
            ),
            //code for Strong
            ElevatedButton(
              onPressed: () {
                setState(() {
                  countOfStrong = 0;
                  countStrong();
                });
              },
              child: const Text("Get Strong count"),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "count of Strong : $countOfStrong",
            ),
          ],
        ),
      ),
    );
  }
}
