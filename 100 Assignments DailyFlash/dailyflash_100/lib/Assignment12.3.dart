import 'package:flutter/material.dart';

class Assignment12C extends StatefulWidget {
  const Assignment12C({super.key});

  @override
  State<Assignment12C> createState() => _Assignment12CState();
}

class _Assignment12CState extends State<Assignment12C> {
  final _formKey = GlobalKey<FormState>();
  bool flag = false;
  TextEditingController nameController = TextEditingController();
  TextEditingController collegeController = TextEditingController();

  void submit() {
    if (_formKey.currentState!.validate()) {
      setState(() {
        flag = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DailyFlash"),
        backgroundColor:
            flag ? const Color.fromARGB(255, 247, 229, 201) : Colors.blue,
      ),
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                controller: nameController,
                decoration: InputDecoration(
                  hintText: "Enter Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.black),
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your Name';
                  }
                  return null;
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                controller: collegeController,
                decoration: InputDecoration(
                  hintText: "Enter Your College",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.black),
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your college';
                  }
                  return null;
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: submit,
              child: const Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }
}
