import 'package:expense_manager/myutilities.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

int flg = 0;

class _HomePageState extends State {
  Future<void> bottomSheet() async {
    await showModalBottomSheet(
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        context: context,
        builder: (context) {
          return Padding(
            padding: EdgeInsets.only(
              top: 30,
              left: 15,
              right: 15,
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              // key: _formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: main,
                children: [
                  Text(
                    "Date",
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 13, fontWeight: FontWeight.w400)),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  TextFormField(
                    // controller: descriptionController,
                    // maxLines: 1,
                    decoration: InputDecoration(
                      // label: const Text("11-06-2022"),
                      hintText: "11-06-2022",
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(107, 112, 92, 1),
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Amount",
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 13, fontWeight: FontWeight.w400)),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  TextFormField(
                    // controller: descriptionController,
                    // maxLines: 1,
                    decoration: InputDecoration(
                      // label: const Text("900"),
                      hintText: "900",
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(107, 112, 92, 1),
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Category",
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 13, fontWeight: FontWeight.w400)),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  TextFormField(
                    // controller: descriptionController,
                    // maxLines: 1,
                    decoration: InputDecoration(
                      // label: const Text("900"),
                      hintText: "Shopping",
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(107, 112, 92, 1),
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Description",
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 13, fontWeight: FontWeight.w400)),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  TextFormField(
                    // controller: descriptionController,
                    // maxLines: 1,
                    decoration: InputDecoration(
                      // label: const Text("900"),
                      hintText: "Lorem Ipsum is simply dummy text of the ",
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(107, 112, 92, 1),
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(4, 161, 125, 1),
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                      height: 49,
                      child: Center(
                        child: Text(
                          "Add Transaction",
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  )
                ],
              ),
            ),
          );
        });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(Icons.search_outlined))
        ],
        title: Text(
          "June 2022",
          style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: const Color.fromRGBO(33, 33, 33, 1)),
        ),
      ),
      body: ListView.builder(
        itemCount: 6,
        itemBuilder: (context, index) {
          return Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                    color: Color.fromRGBO(206, 206, 206, 0.5), width: 1.4),
              ),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromRGBO(0, 174, 91, 0.7)),
                      child: SvgPicture.asset("assets/medicine.svg"),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Medicine",
                            style: GoogleFonts.poppins(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: const Color.fromRGBO(0, 0, 0, 1)),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Lorem Ipsum is simply dummy text of the ",
                            style: GoogleFonts.poppins(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: const Color.fromRGBO(0, 0, 0, 1)),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Icon(
                              Icons.remove_circle,
                              color: Color.fromRGBO(246, 113, 49, 1),
                              size: 20,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "500",
                              style: GoogleFonts.poppins(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: const Color.fromRGBO(0, 0, 0, 1)),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "3 June | 11:50 AM",
                      style: GoogleFonts.poppins(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(0, 0, 0, 0.6)),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {
          await bottomSheet();
        },
        backgroundColor: Colors.white,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(67))),
        label: Container(
          child: Row(
            children: [
              const Icon(
                Icons.add_circle,
                color: Color.fromRGBO(14, 161, 125, 1),
                size: 32,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                "Add Transaction",
                style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: const Color.fromRGBO(37, 37, 37, 1)),
              ),
            ],
          ),
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
