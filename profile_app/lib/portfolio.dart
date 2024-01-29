import 'package:flutter/material.dart';

class portfolio extends StatefulWidget {
  const portfolio({super.key});

  @override
  State<portfolio> createState() => _portfolioState();
}

class _portfolioState extends State<portfolio> {
  int? count = 0;
  showNextInfo() {
    if (count! > 6) {
      count = -1;
    }
    setState(() {
      count = count! + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[100],
      appBar: AppBar(
        title: const Text("portfolio"),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  (count! >= 1)
                      ? Align(
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "Name : Avishkar Jagtap",
                            textAlign: TextAlign.left,
                            textScaleFactor: 1.5,
                          ),
                        )
                      : Container(),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              (count! >= 2)
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/profilepic.jpeg",
                          width: 150,
                          height: 150,
                        ),
                      ],
                    )
                  : Container(),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  (count! >= 3)
                      ? Align(
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            " College : Sinhagad College",
                            textAlign: TextAlign.left,
                            textScaleFactor: 1.5,
                          ),
                        )
                      : Container(),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              (count! >= 4)
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(
                          "https://images.collegedunia.com/public/college_data/images/logos/1616602798Logo.jpg",
                          width: 150,
                          height: 150,
                        ),
                      ],
                    )
                  : Container(),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  (count! >= 5)
                      ? Align(
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            " Dream Company : Microsoft",
                            textAlign: TextAlign.left,
                            textScaleFactor: 1.5,
                          ),
                        )
                      : Container(),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              (count! >= 6)
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(
                          "https://upload.wikimedia.org/wikipedia/commons/thumb/9/98/Microsoft_logo.jpg/480px-Microsoft_logo.jpg",
                          width: 150,
                          height: 150,
                        ),
                      ],
                    )
                  : Container(),
              SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: showNextInfo,
        child: const Text("Next"),
      ),
    );
  }
}
