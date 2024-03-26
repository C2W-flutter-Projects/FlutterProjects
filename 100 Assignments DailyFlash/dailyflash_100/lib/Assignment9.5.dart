import 'package:flutter/material.dart';

class Assignment9E extends StatefulWidget {
  const Assignment9E({super.key});

  @override
  State<Assignment9E> createState() => _Assignment9EState();
}

class _Assignment9EState extends State<Assignment9E> {
  bool flag = false;
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              controller: nameController,
              decoration: InputDecoration(
                  hintText: "Enter name",
                  fillColor: Colors.purple,
                  // filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      color: Colors.black,
                    ),
                  )),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              controller: phoneController,
              decoration: InputDecoration(
                  hintText: "Enter phone no.",
                  fillColor: Colors.purple,
                  // filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      color: Colors.black,
                    ),
                  )),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                flag = true;
              });
            },
            child: const Text("Submit"),
          ),
          const SizedBox(
            height: 20,
          ),
          (flag)
              ? Text(
                  "Name :   ${nameController.text} \n Phone: ${phoneController.text}")
              : const SizedBox(),
        ],
      ),
    );
  }
}
