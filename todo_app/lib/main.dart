import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(title: "Add Names"),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedIndex = 0;
  List<String> nameList = [];

  final TextEditingController _namesTextEditingController =
      TextEditingController();
  final FocusNode _nameFocusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: const Text("Todo APP"),
      ),
      body: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Container(
              width: 800,
              margin: const EdgeInsets.all(20),
              child: TextField(
                controller: _namesTextEditingController,
                focusNode: _nameFocusNode,
                decoration: InputDecoration(
                  hintText: "Enter Name",
                  border: InputBorder.none,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: const BorderSide(
                      color: Colors.blue,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      color: Colors.pink,
                    ),
                  ),
                ),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (context, index) {
                return Container(
                  width: 300,
                  height: 50,
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(3, 3),
                          color: Colors.black,
                          blurRadius: 0.7,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(width: 2),
                      color: Colors.cyan),
                  child: Center(child: Text(nameList[index])),
                );
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            nameList.add(_namesTextEditingController.text);
            _namesTextEditingController.text = "";
          });
        },
        child: const Icon(Icons.add),
      
    );
  }
}
