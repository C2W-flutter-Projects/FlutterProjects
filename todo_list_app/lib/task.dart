import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class task extends StatefulWidget {
  const task({super.key});

  @override
  State<task> createState() => _taskState();
}

class TodoModelClass {
  final String? title;
  final String? desc;
  final String? date;

  const TodoModelClass({
    this.title,
    this.desc,
    this.date,
  });
}

class _taskState extends State<task> {
  int curridx = 0;
  bool isedit = false;
  TextEditingController titleController = TextEditingController();
  TextEditingController descController = TextEditingController();
  TextEditingController dateController = TextEditingController();

  List<Color>? colorList = [
    const Color.fromRGBO(250, 232, 232, 1),
    const Color.fromRGBO(232, 237, 250, 1),
    const Color.fromRGBO(250, 249, 232, 1),
    const Color.fromRGBO(250, 232, 250, 1),
  ];
  List<TodoModelClass>? data = [];

  void addtaskBox() {
    if (!isedit) {
      // Add new task
      TodoModelClass newTask = TodoModelClass(
        title: titleController.text,
        desc: descController.text,
        date: dateController.text,
      );
      setState(() {
        data!.add(newTask);
      });
    } else {
      // Edit existing task
      TodoModelClass editedTask = TodoModelClass(
        title: titleController.text,
        desc: descController.text,
        date: dateController.text,
      );
      setState(() {
        data![curridx] = editedTask;
      });
    }

    // Clear controllers
    titleController.clear();
    descController.clear();
    dateController.clear();

    // Close bottom sheet
    Navigator.pop(context);
  }

  Widget _buildBottomSheet(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Create Task",
                    style: GoogleFonts.quicksand(
                      fontWeight: FontWeight.w600,
                      fontSize: 22,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Title",
              style: GoogleFonts.quicksand(
                fontWeight: FontWeight.w400,
                fontSize: 13,
                color: const Color.fromRGBO(0, 139, 148, 1),
              ),
            ),
            TextField(
              controller: titleController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color.fromRGBO(0, 139, 148, 1)),
                ),
                fillColor: Color.fromRGBO(0, 139, 148, 1),
                hintText: "Lorem Ipsum typeseting industry.",
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              "Description",
              style: GoogleFonts.quicksand(
                fontWeight: FontWeight.w400,
                fontSize: 13,
                color: const Color.fromRGBO(0, 139, 148, 1),
              ),
            ),
            TextField(
              controller: descController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(width: 2),
                ),
                hintText: "Enter Description",
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              "Date",
              style: GoogleFonts.quicksand(
                fontWeight: FontWeight.w400,
                fontSize: 13,
                color: const Color.fromRGBO(0, 139, 148, 1),
              ),
            ),
            TextField(
              controller: dateController,
              readOnly: true,
              decoration: InputDecoration(
                border: const OutlineInputBorder(
                  borderSide: BorderSide(width: 2),
                ),
                hintText: "e.g : 2023-07-26",
                suffixIcon: GestureDetector(
                  onTap: () async {
                    // Pick a date from the date picker
                    DateTime? pickedDate = await showDatePicker(
                      context: context,
                      firstDate: DateTime(2020),
                      lastDate: DateTime(2025),
                    );

                    String formattedDate =
                        DateFormat.yMMMd().format(pickedDate!);

                    setState(() {
                      dateController.text = formattedDate;
                    });
                  },
                  child: const Icon(Icons.calendar_month),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    backgroundColor: const MaterialStatePropertyAll(
                      Color.fromRGBO(0, 139, 148, 1),
                    ),
                    minimumSize: MaterialStateProperty.all(const Size(300, 50)),
                  ),
                  onPressed: addtaskBox,
                  child: Text(
                    "Submit",
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w700,
                      fontSize: 22,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "To-do List",
          style:
              GoogleFonts.quicksand(fontSize: 26, fontWeight: FontWeight.w700),
        ),
        backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView.builder(
          itemCount: data!.length,
          itemBuilder: (context, index) {
            TodoModelClass obj = data![index];
            return Container(
              margin: const EdgeInsets.all(10),
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              decoration: BoxDecoration(
                color: colorList![index % colorList!.length],
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.grey,
                      blurRadius: 0.3,
                      offset: Offset(3, 3)),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 52,
                            width: 52,
                            margin: const EdgeInsets.all(20),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: Image.network(
                              "https://media.istockphoto.com/id/1303877287/vector/paper-checklist-and-pencil-flat-pictogram.jpg?s=612x612&w=0&k=20&c=NoqPzn94VH2Pm7epxF8P5rCcScMEAiGQ8Hv_b2ZwRjY=",
                              height: 22,
                              width: 22,
                            ),
                          ),
                        ],
                      ),
                      Flexible(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Flexible(
                                  child: SizedBox(
                                    child: Text(
                                      "${obj.title}",
                                      style: GoogleFonts.quicksand(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Flexible(
                                  child: SizedBox(
                                    child: Text(
                                      "${obj.desc}",
                                      style: GoogleFonts.quicksand(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 11),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Text(
                              "${obj.date}",
                              style: GoogleFonts.quicksand(
                                  fontWeight: FontWeight.w500, fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: () {
                          isedit = true;
                          curridx = index;
                          showModalBottomSheet(
                              context: context,
                              builder: ((context) {
                                titleController.text = data![index].title!;
                                descController.text = data![index].desc!;
                                dateController.text = data![index].date!;

                                return _buildBottomSheet(context);
                              }));
                        },
                        child: const Icon(
                          Icons.edit_outlined,
                          color: Color.fromRGBO(0, 139, 148, 1),
                          size: 17,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            data!.removeAt(index);
                          });
                        },
                        child: const Icon(
                          Icons.delete_outlined,
                          color: Color.fromRGBO(0, 139, 148, 1),
                          size: 17,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          isedit = false;
          showModalBottomSheet(
            context: context,
            builder: (context) => _buildBottomSheet(context),
          );
        },
        child: const Icon(Icons.add),
      ),
      resizeToAvoidBottomInset: true,
    );
  }
}
