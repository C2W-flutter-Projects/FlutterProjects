import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: quizApp(),
    );
  }
}

class quizApp extends StatefulWidget {
  const quizApp({super.key});

  @override
  State<quizApp> createState() => _quizAppState();
}

class _quizAppState extends State<quizApp> {
  int score = 0;
  int queIndex = 0;
  int btn1 = -1;
  int btn2 = -1;
  int btn3 = -1;
  int btn4 = -1;

  List<Map> allQuestions = [
    {
      "Question": "Who is the Founder of Microsoft",
      "Option": ["Steve Jobs", "Jeff Bezos", "Bill Gates", "Elon Musk"],
      "ans": 2,
    },
    {
      "Question": "Who is the Founder of Apple",
      "Option": ["Steve Jobs", "Jeff Bezos", "Bill Gates", "Elon Musk"],
      "ans": 0,
    },
    {
      "Question": "Who is the Founder of Amazon",
      "Option": ["Steve Jobs", "Jeff Bezos", "Bill Gates", "Elon Musk"],
      "ans": 1,
    },
    {
      "Question": "Who is the Founder of Tesla",
      "Option": ["Steve Jobs", "Jeff Bezos", "Bill Gates", "Elon Musk"],
      "ans": 3,
    },
  ];

  bool screen = true;
  Scaffold quiz() {
    if (screen) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "QuizApp",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w800,
              color: Colors.orange,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  "Question : ",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                ),
                Text(
                  "${queIndex + 1} / ${allQuestions.length}",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(
              height: 50,
              child: Text("Question : ${allQuestions[queIndex]["Question"]}",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600)),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  btn1 = 0;
                  if (allQuestions[queIndex]["ans"] == 1) {
                    btn2 = 1;
                  } else if (allQuestions[queIndex]["ans"] == 2) {
                    btn3 = 2;
                  } else if (allQuestions[queIndex]["ans"] == 3) {
                    btn4 = 3;
                  } else {
                    score++;
                  }
                });
              },
              style: ButtonStyle(
                backgroundColor: (allQuestions[queIndex]["ans"] == btn1)
                    ? MaterialStatePropertyAll(Colors.green)
                    : (btn1 == 0)
                        ? MaterialStatePropertyAll(Colors.red)
                        : null,
              ),
              child: Text(
                "A. ${allQuestions[queIndex]["Option"][0]}",
                style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  btn2 = 1;
                  if (allQuestions[queIndex]["ans"] == 0) {
                    btn1 = 0;
                  } else if (allQuestions[queIndex]["ans"] == 2) {
                    btn3 = 2;
                  } else if (allQuestions[queIndex]["ans"] == 3) {
                    btn4 = 3;
                  } else {
                    score++;
                  }
                });
              },
              style: ButtonStyle(
                backgroundColor: (allQuestions[queIndex]["ans"] == btn2)
                    ? MaterialStatePropertyAll(Colors.green)
                    : (btn2 == 1)
                        ? MaterialStatePropertyAll(Colors.red)
                        : null,
              ),
              child: Text(
                "B. ${allQuestions[queIndex]["Option"][1]}",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  btn3 = 2;
                  if (allQuestions[queIndex]["ans"] == 0) {
                    btn1 = 0;
                  } else if (allQuestions[queIndex]["ans"] == 1) {
                    btn2 = 1;
                  } else if (allQuestions[queIndex]["ans"] == 3) {
                    btn4 = 3;
                  } else {
                    score++;
                  }
                });
              },
              style: ButtonStyle(
                backgroundColor: (allQuestions[queIndex]["ans"] == btn3)
                    ? MaterialStatePropertyAll(Colors.green)
                    : (btn3 == 2)
                        ? MaterialStatePropertyAll(Colors.red)
                        : null,
              ),
              child: Text(
                "C. ${allQuestions[queIndex]["Option"][2]}",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  btn4 = 3;
                  if (allQuestions[queIndex]["ans"] == 0) {
                    btn1 = 0;
                  } else if (allQuestions[queIndex]["ans"] == 1) {
                    btn2 = 1;
                  } else if (allQuestions[queIndex]["ans"] == 2) {
                    btn3 = 2;
                  } else {
                    score++;
                  }
                });
              },
              style: ButtonStyle(
                backgroundColor: (allQuestions[queIndex]["ans"] == btn4)
                    ? MaterialStatePropertyAll(Colors.green)
                    : (btn4 == 3)
                        ? MaterialStatePropertyAll(Colors.red)
                        : null,
              ),
              child: Text(
                "D. ${allQuestions[queIndex]["Option"][3]}",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              if (queIndex < allQuestions.length - 1) {
                queIndex++;
                btn1 = -1;
                btn2 = -1;
                btn3 = -1;
                btn4 = -1;
              } else {
                screen = false;
              }
            });
          },
          backgroundColor: Colors.blue,
          child: Icon(
            Icons.forward,
            color: Colors.orange,
          ),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "QuizApp",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w800,
              color: Colors.orange,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              "${score} / ${allQuestions.length}",
              style: TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.w800,
                  color: Colors.yellow[800]),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Your Score",
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.w800),
                ),
              ],
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return quiz();
  }
}
