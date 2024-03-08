import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class Todo extends StatefulWidget {
  const Todo({super.key});

  @override
  State<Todo> createState() => _TodoState();
}

class TodoModelClass {
  String title;
  String description;
  String date;

  TodoModelClass(
      {required this.title, required this.description, required this.date});
}

class _TodoState extends State<Todo> {
  bool isCheckBoxChecked = false;

  List<TodoModelClass> data = [];

  List<Color>? colorList = const [
    Color.fromRGBO(250, 232, 232, 1),
    Color.fromRGBO(232, 237, 250, 1),
    Color.fromRGBO(250, 249, 232, 1),
    Color.fromRGBO(250, 232, 250, 1),
    Color.fromRGBO(250, 232, 232, 1),
  ];

  TextEditingController titleController = TextEditingController();
  TextEditingController descController = TextEditingController();
  TextEditingController dateController = TextEditingController();

  void editTask(TodoModelClass obj) {
    titleController.text = obj.title;
    descController.text = obj.description;
    dateController.text = obj.date;

    addOrEditTask(true, obj);
  }

  void removeTasks(TodoModelClass obj) {
    setState(() {
      data.remove(obj);
    });
  }

  @override
  void dispose() {
    super.dispose();
    titleController.dispose();
    dateController.dispose();
    descController.dispose();
  }

  void clearController() {
    titleController.clear();
    descController.clear();
    dateController.clear();
  }

  void submit(bool isedit, [TodoModelClass? obj]) {
    if (titleController.text.trim().isNotEmpty &&
        descController.text.trim().isNotEmpty &&
        dateController.text.trim().isNotEmpty) {
      if (!isedit) {
        setState(() {
          data.add(
            TodoModelClass(
                title: titleController.text.trim(),
                description: descController.text.trim(),
                date: dateController.text.trim()),
          );
        });
      } else {
        setState(() {
          obj!.title = titleController.text.trim();
          obj.description = descController.text.trim();
          obj.date = dateController.text.trim();
        });
      }
    }
    clearController();
  }

  final _formKey = GlobalKey<FormState>();
  Future<void> addOrEditTask(bool doEdit,
      [TodoModelClass? todoModelObj]) async {
    await showModalBottomSheet(
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(30),
        ),
      ),
      context: context,
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(
            left: 15,
            right: 15,
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: 20,
              ),
              Text(
                "Create Tasks",
                style: GoogleFonts.quicksand(
                  fontWeight: FontWeight.w600,
                  fontSize: 22,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Title",
                      style: GoogleFonts.quicksand(
                        color: const Color.fromRGBO(89, 57, 241, 1),
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    TextFormField(
                      controller: titleController,
                      decoration: InputDecoration(
                        hintText: "Enter Title",
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: Color.fromRGBO(89, 57, 241, 1),
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.red),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Text(
                      "Description",
                      style: GoogleFonts.quicksand(
                        color: const Color.fromRGBO(89, 57, 241, 1),
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    TextFormField(
                      controller: descController,
                      maxLines: 4,
                      decoration: InputDecoration(
                        hintText: "Enter Description",
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: Color.fromRGBO(89, 57, 241, 1),
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.red),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Text(
                      "Date",
                      style: GoogleFonts.quicksand(
                        color: const Color.fromRGBO(89, 57, 241, 1),
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    TextFormField(
                      controller: dateController,
                      readOnly: true,
                      decoration: InputDecoration(
                        hintText: "Enter Date",
                        suffixIcon: const Icon(Icons.date_range_rounded),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: Color.fromRGBO(89, 57, 241, 1),
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.red),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onTap: () async {
                        DateTime? pickedDate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2023),
                          lastDate: DateTime(2025),
                        );
                        String formatedDate =
                            DateFormat.yMMMd().format(pickedDate!);
                        dateController.text = formatedDate;
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                width: 300,
                margin: const EdgeInsets.all(10),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(30)),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        13,
                      ),
                    ),
                    backgroundColor: const Color.fromRGBO(89, 57, 241, 1),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    "Submit",
                    style: GoogleFonts.inter(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(111, 81, 255, 1),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 45, left: 30, right: 183),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Good Morning",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
                Text(
                  "Avishkar",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          Flexible(
            child: Container(
              decoration: const BoxDecoration(
                color: Color.fromRGBO(217, 217, 217, 1),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)),
              ),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    child: Text(
                      "CREATE TO DO LIST",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Flexible(
                    child: Container(
                      padding: const EdgeInsets.only(top: 17),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40)),
                      ),
                      child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: data.length,
                        itemBuilder: (context, index) {
                          return Slidable(
                            closeOnScroll: true,
                            key: const ValueKey(0),
                            endActionPane: ActionPane(
                              extentRatio: 0.2,
                              motion: const DrawerMotion(),
                              children: [
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      GestureDetector(
                                        child: Container(
                                          padding: const EdgeInsets.all(10),
                                          height: 40,
                                          width: 40,
                                          decoration: BoxDecoration(
                                            color: const Color.fromRGBO(
                                                89, 57, 241, 1),
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          child: const Icon(
                                            Icons.edit,
                                            color: Colors.white,
                                            size: 20,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      GestureDetector(
                                        child: Container(
                                          padding: const EdgeInsets.all(10),
                                          height: 40,
                                          width: 40,
                                          decoration: BoxDecoration(
                                            color: const Color.fromRGBO(
                                                89, 57, 241, 1),
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          child: const Icon(
                                            Icons.delete,
                                            color: Colors.white,
                                            size: 20,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            direction: Axis.horizontal,
                            child: Container(
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 4,
                                  ),
                                ],
                              ),
                              padding: const EdgeInsets.all(9),
                              margin: const EdgeInsets.only(
                                  top: 10, bottom: 10, left: 10, right: 10),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Container(
                                      height: 52,
                                      width: 52,
                                      margin: const EdgeInsets.all(8),
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.grey,
                                      ),
                                      child: const Icon(Icons.image),
                                    ),
                                  ),
                                  const Flexible(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Lorem Ipsum is simply dummy industry.",
                                          style: TextStyle(
                                              fontSize: 11,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "Simply dummy text of the printing and type setting industry. Lorem Ipsum Lorem Ipsum Lorem.",
                                          style: TextStyle(
                                              fontSize: 9,
                                              fontWeight: FontWeight.w400),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "10 July 2023",
                                          style: TextStyle(
                                              fontSize: 8,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Checkbox(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    activeColor: Colors.green,
                                    value: isCheckBoxChecked,
                                    onChanged: (val) {
                                      setState(() {
                                        isCheckBoxChecked = !isCheckBoxChecked;
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromRGBO(89, 57, 241, 1),
        onPressed: () async {
          await addOrEditTask(false);
        },
        child: const Icon(
          size: 50,
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
