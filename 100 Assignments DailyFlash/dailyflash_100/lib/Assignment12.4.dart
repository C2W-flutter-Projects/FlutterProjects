import 'package:flutter/material.dart';

class Assignment12D extends StatefulWidget {
  const Assignment12D({super.key});

  @override
  State<Assignment12D> createState() => _Assignment12DState();
}

class _Assignment12DState extends State<Assignment12D> {
  bool isfilled = false;
  bool isbtnpressed = false;

  TextEditingController nameController = TextEditingController();
  TextEditingController collegeController = TextEditingController();

  String name = "";
  String college = "";

  List<Map> data = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[50],
      appBar: AppBar(
        title: const Text(
          "DailyFlash",
          style: TextStyle(
              fontSize: 20,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.orange,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Center(
            child: SizedBox(
              width: 350,
              child: TextField(
                controller: nameController,
                showCursor: true,
                decoration: InputDecoration(
                  labelText: 'Name: ',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focusColor: Colors.blue,
                  hoverColor: Colors.lightBlue,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: SizedBox(
              width: 350,
              child: TextField(
                controller: collegeController,
                showCursor: true,
                decoration: InputDecoration(
                  labelText: 'College: ',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focusColor: Colors.blue,
                  hoverColor: Colors.lightBlue,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.purple)),
            onPressed: () {
              setState(() {
                data.add({
                  "name": nameController.text,
                  "college": collegeController.text,
                });
                nameController.text = "";
                collegeController.text = "";
              });
            },
            child: const Text(
              "Submit",
              style: TextStyle(color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 174, 239, 248),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.teal[300],
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.cyan,
                            blurRadius: 7,
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Name: ${data[index]["name"]}",
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w400),
                            textAlign: TextAlign.start,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Dream college: ${data[index]["college"]}",
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w400),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
