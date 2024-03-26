import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sqflite/sqflite.dart';
import 'package:intl/intl.dart';
import 'package:path/path.dart' as p;

dynamic database;

class Todo extends StatefulWidget {
  const Todo({super.key});

  @override
  State<Todo> createState() => _TodoState();
}

class TodoModelClass {
  int? taskId;
  String title;
  String description;
  String date;
  bool isCheckBoxChecked;

  TodoModelClass(
      {required this.taskId,
      required this.title,
      required this.description,
      required this.date,
      this.isCheckBoxChecked = false});

  Map<String, dynamic> taskinfo() {
    return {
      'title': title,
      'description': description,
      'date': date,
      'ischeckBoxChecked': isCheckBoxChecked ? 1 : 0,
    };
  }

  @override
  String toString() {
    return '''{taskID : $taskId , title: $title, description : $description, date : $date, isCheckBoxChecked : $isCheckBoxChecked
    }''';
  }
}

Future<void> insertTaskData(TodoModelClass task) async {
  final localDB = await database;
  await localDB.insert(
    'TodoModelClass',
    task.taskinfo(),
    ConflictAlgorithm: ConflictAlgorithm.replace,
  );
}

Future<void> updateTaskData(TodoModelClass obj) async {
  final localDB = await database;
  await localDB.update('TodoModelClass', obj.taskinfo(),
      where: 'taskId = ?', whereArgs: [obj.taskId]);
}

Future<List<TodoModelClass>> getTaskData() async {
  final localDB = await database;
  List<Map<String, dynamic>> mapEntries = await localDB.query("TodoModelClass");
  return List.generate(mapEntries.length, (i) {
    return TodoModelClass(
        taskId: mapEntries[i]['taskID'],
        title: mapEntries[i]['title'],
        description: mapEntries[i]['description'],
        date: mapEntries[i]['date']);
  });
}

class _TodoState extends State<Todo> {
  late Database database;
  List<TodoModelClass> data = [];

  @override
  void initState() {
    super.initState();
    initDB();
  }

  Future<void> initDB() async {
    database = await openDatabase(
      p.join(await getDatabasesPath(), "todoDB4.db"),
      onCreate: (db, version) async {
        await db.execute('''CREATE TABLE TodoModelClass(
taskId INTEGER PRIMARY KEY AUTOINCREMENT,
title TEXT,
description TEXT,
date TEXT,
isCheckBoxChecked INTEGER
)''');
      },
      version: 1,
    );
    data.addAll(await getTaskData());
    setState(() {});
    print(data);
  }

  void editTask(BuildContext context, TodoModelClass obj) {
    titleController.text = obj.title;
    descController.text = obj.description;
    dateController.text = obj.date;

    addOrEditTask(true, obj);
  }

  void removeTasks(TodoModelClass obj) async {
    setState(() {
      data.remove(obj);
    });

    final localDB = database;
    await localDB.delete(
      'TodoModelClass',
      where: "taskId = ?",
      whereArgs: [obj.taskId],
    );
  }

  List<Color>? colorList = const [
    Color.fromRGBO(250, 232, 232, 1),
    Color.fromRGBO(232, 237, 250, 1),
    Color.fromRGBO(250, 249, 232, 1),
    Color.fromRGBO(250, 232, 250, 1),
    Color.fromRGBO(250, 232, 232, 1),
  ];

  @override
  void dispose() {
    super.dispose();
    titleController.dispose();
    dateController.dispose();
    descController.dispose();
  }

  TextEditingController titleController = TextEditingController();
  TextEditingController descController = TextEditingController();
  TextEditingController dateController = TextEditingController();

  void clearController() {
    titleController.clear();
    descController.clear();
    dateController.clear();
  }

  void submit(bool isedit, [TodoModelClass? obj]) async {
    if (titleController.text.trim().isNotEmpty &&
        descController.text.trim().isNotEmpty &&
        dateController.text.trim().isNotEmpty) {
      final newTask = TodoModelClass(
          taskId: isedit ? obj!.taskId : data.length + 1,
          title: titleController.text.trim(),
          description: descController.text.trim(),
          date: dateController.text.trim());
      if (!isedit) {
        setState(() {
          data.add(newTask);
          insertTaskData(newTask);
        });
      } else {
        setState(() {
          final index = data.indexOf(obj!);
          data[index] = newTask;
        });
      }
    }
    clearController();
  }

  final formKey = GlobalKey<FormState>();
  void addOrEditTask(bool isedit, [TodoModelClass? obj]) {
    showModalBottomSheet(
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        isDismissible: true,
        context: context,
        builder: (context) {
          return Padding(
            padding: EdgeInsets.only(
                left: 20,
                right: 20,
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Create Task",
                  style: GoogleFonts.quicksand(
                      fontWeight: FontWeight.w600, fontSize: 22),
                ),
                const SizedBox(
                  height: 13,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Title",
                      style: GoogleFonts.quicksand(
                        color: const Color.fromRGBO(0, 139, 148, 1),
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    TextField(
                      controller: titleController,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: Color.fromRGBO(0, 139, 148, 1),
                          ),
                        ),
                        hintText: 'Enter Task',
                        border: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.purpleAccent),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Description",
                      style: GoogleFonts.quicksand(
                        color: const Color.fromRGBO(0, 139, 148, 1),
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    TextField(
                      controller: descController,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: Color.fromRGBO(0, 139, 148, 1),
                          ),
                        ),
                        hintText: 'Enter Task Description',
                        border: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.purpleAccent),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Date",
                      style: GoogleFonts.quicksand(
                        color: const Color.fromRGBO(0, 139, 148, 1),
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    TextField(
                      controller: dateController,
                      readOnly: true,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: Color.fromRGBO(0, 139, 148, 1),
                          ),
                        ),
                        suffixIcon: GestureDetector(
                            onTap: () async {
                              DateTime? selecteddate = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(2024),
                                lastDate: DateTime(2025),
                              );
                              String formattedDate =
                                  DateFormat.yMMMd().format(selecteddate!);

                              setState(() {
                                dateController.text = formattedDate;
                              });
                            },
                            child: const Icon(Icons.calendar_month_outlined)),
                        hintText: 'e.g. 2024-02-29',
                        border: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.purpleAccent),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: ElevatedButton(
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          backgroundColor: const MaterialStatePropertyAll(
                            Color.fromRGBO(0, 139, 148, 1),
                          ),
                          minimumSize:
                              MaterialStateProperty.all(const Size(300, 50)),
                        ),
                        onPressed: () {
                          if (isedit) {
                            submit(true, obj);
                          } else {
                            submit(false);
                          }

                          Navigator.of(context).pop();
                        },
                        child: Text(
                          "Submit",
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w700,
                            fontSize: 22,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(111, 81, 255, 1),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 45, left: 30, right: 183),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 40,
                ),
                Text(
                  "Good Morning",
                  style: GoogleFonts.quicksand(
                      fontSize: 27,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
                Text(
                  "Avishkar",
                  style: GoogleFonts.quicksand(
                      fontSize: 40,
                      fontWeight: FontWeight.w700,
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
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 10),
                    child: Text(
                      "CREATE TO DO LIST",
                      style: GoogleFonts.quicksand(
                          fontSize: 12, fontWeight: FontWeight.w700),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Flexible(
                    child: Container(
                      padding: const EdgeInsets.only(top: 17),
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Colors.deepPurple, Colors.purple]),
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
                            key: UniqueKey(),
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
                                        onTap: () {
                                          editTask(context, data[index]);
                                        },
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
                                        onTap: () {
                                          removeTasks(data[index]);
                                        },
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
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                  Flexible(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          data[index].title,
                                          style: const TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Flexible(
                                              child: Text(
                                                data[index].description,
                                                style: const TextStyle(
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          data[index].date,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Checkbox(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            activeColor: Colors.green,
                                            value:
                                                data[index].isCheckBoxChecked,
                                            onChanged: (val) {
                                              setState(() {
                                                data[index].isCheckBoxChecked =
                                                    val != null && val;
                                              });
                                            },
                                          ),
                                        ],
                                      ),
                                    ],
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
        onPressed: () {
          addOrEditTask(false);
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
