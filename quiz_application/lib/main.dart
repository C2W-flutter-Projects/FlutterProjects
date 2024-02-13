import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: QuizApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
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
  int score = 0;
  int queIndex = 0;
  int selectedIndex = -1;
  bool answerSelected = false;

  //function to check if selected answer is true or false and turn the button color
  MaterialStateProperty<Color?>? checkAns(int currQueIndex) {
    if (selectedIndex != -1) {
      if (allQuestions[queIndex]["ans"] == currQueIndex) {
        return const MaterialStatePropertyAll(Colors.green);
      } else {
        if (selectedIndex == currQueIndex) {
          setState(() {
            score++;
          });
          return const MaterialStatePropertyAll(Colors.red);
        }
      }
    }
    return const MaterialStatePropertyAll(null);
  }

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
            const SizedBox(
              height: 100,
            ),
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
                  style: const TextStyle(
                      fontSize: 17, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(
              height: 50,
              child: Text("Question : ${allQuestions[queIndex]["Question"]}",
                  style: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.w600)),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: checkAns(0),
              ),
              onPressed: () {
                if (selectedIndex == -1) {
                  setState(() {
                    selectedIndex = 0;
                  });
                }
              },
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
              style: ButtonStyle(
                backgroundColor: checkAns(1),
              ),
              onPressed: () {
                if (selectedIndex == -1) {
                  setState(() {
                    selectedIndex = 1;
                  });
                }
              },
              child: Text(
                "A. ${allQuestions[queIndex]["Option"][1]}",
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
              style: ButtonStyle(
                backgroundColor: checkAns(2),
              ),
              onPressed: () {
                if (selectedIndex == -1) {
                  setState(() {
                    selectedIndex = 2;
                  });
                }
              },
              child: Text(
                "A. ${allQuestions[queIndex]["Option"][2]}",
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
              style: ButtonStyle(
                backgroundColor: checkAns(3),
              ),
              onPressed: () {
                if (selectedIndex == -1) {
                  setState(() {
                    selectedIndex = 3;
                  });
                }
              },
              child: Text(
                "A. ${allQuestions[queIndex]["Option"][3]}",
                style: const TextStyle(
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
            if (queIndex <= allQuestions.length - 1 &&
                selectedIndex != allQuestions.length - 1) {
              setState(() {
                if (selectedIndex != -1) {
                  queIndex++;
                }
                selectedIndex = -1;
              });
            } else {
              setState(() {
                screen = false;
              });
            }
          },
          backgroundColor: Colors.blue,
          child: const Icon(
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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 60,
              ),
              Image.network(
                "https://cdn.stockmediaserver.com/smsimg31/pv/IsignstockContributors/IST_28503_25738.jpg?token=cMWRmOCe1Y-DVrG8MKV_XxuI2tT5ua1RfGYLw1GO_GA&class=pv&smss=52&expires=4102358400",
                height: 250,
                width: 350,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Congratulations!!!",
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w900,
                        color: Colors.amber),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 130,
                    height: 100,
                    color: Colors.lime[50],
                    child: Text(
                      "${allQuestions.length - score} / ${allQuestions.length}",
                      style: TextStyle(
                          fontSize: 60,
                          fontWeight: FontWeight.w800,
                          color: Colors.yellow[800]),
                    ),
                  ),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Your Score",
                    style: TextStyle(fontSize: 50, fontWeight: FontWeight.w800),
                  ),
                ],
              ),
              SizedBox(
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      screen = true;
                      selectedIndex = -1;
                      queIndex = 0;
                      score = 0;
                      answerSelected = false;
                    });
                  },
                  child: const Text(
                    "Reset",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return quiz();
  }
}
