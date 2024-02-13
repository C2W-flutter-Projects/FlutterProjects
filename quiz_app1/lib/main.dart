import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: QuizApp1(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class QuizApp1 extends StatefulWidget {
  const QuizApp1({super.key});

  @override
  State<QuizApp1> createState() => _QuizApp1State();
}

class SingleQuestionModel {
  final String? question;
  final List<String>? options;
  final int? ans;

  const SingleQuestionModel({this.question, this.options, this.ans});
}

class _QuizApp1State extends State<QuizApp1> {
  bool screen = true;
  int queIndex = 0;
  int selectedIndex = -1;
  int score = 0;
  Widget _progressBar() {
    double progress = (queIndex + 1) / allQuestions.length;
    return LinearProgressIndicator(
      value: progress,
      backgroundColor: Colors.red,
      valueColor: const AlwaysStoppedAnimation<Color>(Colors.green),
    );
  }

  List allQuestions = [
    const SingleQuestionModel(
      question:
          "Which programming language is primarily used for Flutter app development?",
      options: ["Dart", "Java", "Swift", "Kotlin"],
      ans: 0,
    ),
    const SingleQuestionModel(
      question: "What is the purpose of a StatefulWidget in Flutter?",
      options: [
        "Displaying static content",
        "Handling user input",
        "Navigating between screens",
        "Managing state"
      ],
      ans: 3,
    ),
    const SingleQuestionModel(
      question:
          "Which widget is used for laying out widgets in a column vertically in Flutter?",
      options: ["Row", "Stack", "Column", "GridView"],
      ans: 2,
    ),
    const SingleQuestionModel(
      question:
          "What method is called every time the state of a StatefulWidget is updated in Flutter?",
      options: ["build()", "setState()", "initState()", "dispose()"],
      ans: 1,
    ),
    const SingleQuestionModel(
      question:
          "What widget is commonly used for adding padding and margins in a Flutter layout?",
      options: ["Padding", "Container", "Row", "Column"],
      ans: 0,
    ),
  ];
  MaterialStateProperty<Color?>? checkAns(int currQueIndex) {
    if (selectedIndex != -1) {
      if (allQuestions[queIndex].ans == currQueIndex) {
        return const MaterialStatePropertyAll(Colors.green);
      } else {
        if (selectedIndex == currQueIndex) {
          score++;
          return const MaterialStatePropertyAll(Colors.red);
        }
      }
    }
    return const MaterialStatePropertyAll(null);
  }

  Scaffold quiz() {
    if (screen) {
      return Scaffold(
        backgroundColor: Colors.cyan[50],
        appBar: AppBar(
          title: const Text(
            "QuizApp",
            style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w600,
                color: Colors.orange),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            _progressBar(),
            const SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Question",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "${queIndex + 1} / ${allQuestions.length}",
                  softWrap: true,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: Center(
                    child: Text(
                      "Que : ${allQuestions[queIndex].question}",
                      softWrap: true,
                      style: const TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Card(
              elevation: 20,
              shadowColor: Colors.blue,
              child: Container(
                width: 400,
                height: 400,
                decoration: BoxDecoration(
                    color: Colors.cyan[400],
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                    border: Border.all(color: Colors.white, width: 4),
                    gradient: const LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [Colors.cyan, Colors.teal])),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 300,
                      child: ElevatedButton(
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
                          child: Text("${allQuestions[queIndex].options[0]}")),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: 300,
                      child: ElevatedButton(
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
                          child: Text("${allQuestions[queIndex].options[1]}")),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: 300,
                      child: ElevatedButton(
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
                          child: Text("${allQuestions[queIndex].options[2]}")),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: 300,
                      child: ElevatedButton(
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
                          child: Text("${allQuestions[queIndex].options[3]}")),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              if (selectedIndex != -1) {
                queIndex++;

                selectedIndex = -1;
              }

              if (queIndex == allQuestions.length) {
                screen = false;
              }
            });
          },
          child: const Icon(
            Icons.forward,
            color: Colors.orange,
          ),
        ),
      );
    } else {
      return Scaffold(
        backgroundColor: Colors.cyan[50],
        appBar: AppBar(
          title: const Text(
            "QuizApp",
            style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w600,
                color: Colors.orange),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 80,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 540,
                  width: 320,
                  decoration: BoxDecoration(
                    color: Colors.cyan[400],
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                    border: Border.all(color: Colors.white, width: 4),
                    gradient: const LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [Colors.cyan, Colors.teal]),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.blue,
                        offset: Offset(20, 20),
                        blurRadius: 7,
                      ),
                      BoxShadow(
                        color: Colors.cyanAccent,
                        offset: Offset(10, 10),
                        blurRadius: 7,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 35,
                      ),
                      Column(
                        children: [
                          Image.network(
                            "https://cdn.stockmediaserver.com/smsimg31/pv/IsignstockContributors/IST_28503_25738.jpg?token=cMWRmOCe1Y-DVrG8MKV_XxuI2tT5ua1RfGYLw1GO_GA&class=pv&smss=52&expires=4102358400",
                            height: 160,
                            width: 220,
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Congratulations!!!",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w900,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "${allQuestions.length - score} / ${allQuestions.length}",
                                style: const TextStyle(
                                    fontSize: 60,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.orange),
                              ),
                            ],
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Your Score",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Quiz Completed Sucessfully!!",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          SizedBox(
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  screen = true;
                                  selectedIndex = -1;
                                  queIndex = 0;
                                  score = 0;
                                });
                              },
                              child: const Text(
                                "Reset",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.cyan),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
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
