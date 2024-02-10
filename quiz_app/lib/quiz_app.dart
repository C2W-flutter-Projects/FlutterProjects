import 'package:flutter/material.dart';

class quiz_app extends StatefulWidget {
  const quiz_app({super.key});

  @override
  State<quiz_app> createState() => _quiz_appState();
}

class _quiz_appState extends State<quiz_app> {
  bool selected = false;

  List<List<bool>> btncolorsList =
      List.generate(10, (index) => List.filled(4, false));
  bool btnColor = false;

  int selectedIndex = 0;
  int queNo = 1;
  List<String> queList = [
    "What is Flutter, and how does it differ from other mobile development frameworks?",
    "Explain the widget concept in Flutter and provide examples of stateless and stateful widgets.",
    "What is the purpose of the 'pubspec.yaml' file in a Flutter project, and what kind of information does it contain?",
    "Describe the Flutter hot reload feature and explain its benefits during the development process.",
    "What is the Dart programming language, and why is it used as the primary language for Flutter development?",
    "How does Flutter handle platform-specific code, and what is the role of the 'platform channels' in Flutter?",
    "Explain the difference between the main() function and the runApp() function in a Flutter application.",
    "Discuss the significance of the MaterialApp and Scaffold widgets in a typical Flutter application.",
    "What is the Flutter layout system, and how does it help in creating responsive UIs for different screen sizes?",
    "Describe the purpose of the 'BuildContext' in Flutter and its role in managing the widget tree.",
  ];
  List<List<String>> optionList = [
    ["UI toolkit", "Google", "cross-platform", "single-codebase"],
    ["UI elements", "Text", "Image", "interchangeable"],
    ["metadata", "dependencies", "package management", "optional"],
    ["dynamic updates", "real-time", "efficiency", "code changes"],
    ["language", "Google", "object-oriented", "Flutter compatibility"],
    ["platform-specific", "channels", "communication", "integration"],
    ["entry point", "application", "execution", "widget tree"],
    ["app structure", "visual elements", "navigation", "framework basics"],
    [
      "responsive UI",
      "flexible",
      "widgets arrangement",
      "cross-device compatibility"
    ],
    [
      "widget tree",
      "UI elements hierarchy",
      "context information",
      "state management"
    ]
  ];
  List<String> getOptions(int index) {
    return optionList[index];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: const Text("Quiz App"),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Question: $queNo/${queList.length} ",
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Expanded(
                  child: Center(
                    child: Text(
                      "Question $queNo: ${queList[queNo - 1]}",
                      softWrap: true,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  for (int i = 1; i <= 4; i++)
                    Container(
                      margin: EdgeInsets.all(10),
                      width: 350,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            selected = !selected;
                            btncolorsList[queNo - 1] = List.filled(4, false);
                            btncolorsList[queNo - 1][i - 1] = true;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: btncolorsList[queNo - 1][i - 1]
                              ? Colors.green
                              : Colors.blue,
                        ),
                        child: Text(
                          "${getOptions(queNo - 1)[i - 1]}",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                ],
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: selected
            ? () {
                setState(() {
                  if (queNo < queList.length) {
                    queNo++;
                    selected = false;
                  }
                });
              }
            : null,
        child: Icon(Icons.arrow_circle_right),
      ),
    );
  }
}

/*
  1=> initially option is nott selected so selectedIndex = false;
  2=> initially button is not accesible until selected is true;
  3=> option is selected then selected becomes true
  4=> queno will increment then selected becomes false again.
*/