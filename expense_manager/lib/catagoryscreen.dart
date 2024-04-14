import 'package:expense_manager/myutilities.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _CategoryPageState();
  }
}

class _CategoryPageState extends State {
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
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Container(
                            width: 74,
                            height: 74,
                            alignment: Alignment.center,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromRGBO(140, 128, 128, 0.2),
                            ),
                            child: SvgPicture.asset(
                              "assets/SVGImages/dummy.svg",
                            ),
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          Text(
                            "Add",
                            style: GoogleFonts.poppins(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromRGBO(0, 0, 0, 1)),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Image URL",
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(33, 33, 33, 1),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Container(
                    width: 316,
                    height: 36,
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter URL ",
                        hintStyle: const TextStyle(
                          color: Color.fromRGBO(191, 189, 189, 1),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(
                            color: Color.fromRGBO(33, 33, 33, 1),
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(),
                          borderRadius: BorderRadius.circular(5),
                        ),
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
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(33, 33, 33, 1),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Container(
                    width: 316,
                    height: 36,
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter category name",
                        hintStyle: const TextStyle(
                          color: Color.fromRGBO(191, 189, 189, 1),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(
                            color: Color.fromRGBO(107, 112, 92, 1),
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(
                            color: Color.fromRGBO(107, 112, 92, 1),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Color.fromRGBO(4, 161, 125, 1),
                            borderRadius: BorderRadius.all(Radius.circular(67)),
                          ),
                          height: 49,
                          width: 123,
                          child: Center(
                            child: Text(
                              "Add",
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
                    ],
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

  @override
  Widget build(BuildContext context) {
    Future<dynamic> showmyDialog() async {
      return await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Center(
              child: Text(
                "Delete Category",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w500)),
              ),
            ),
            content: Text(
              "Are you sure you want to delete the selected category?",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      fontSize: 12, fontWeight: FontWeight.w400)),
            ),
            actions: [
              Row(
                children: [
                  Container(
                      width: 100,
                      height: 35,
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(14, 161, 125, 1),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: ElevatedButton(
                        style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                          Color.fromRGBO(14, 161, 125, 1),
                        )),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          "Delete",
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white)),
                        ),
                      )),
                  const SizedBox(
                    width: 75,
                  ),
                  Container(
                      width: 100,
                      height: 35,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: ElevatedButton(
                        style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                          Colors.white,
                        )),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          "Cancel",
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black)),
                        ),
                      )),
                ],
              ),
            ],
          );
        },
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Categories",
          style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: const Color.fromRGBO(33, 33, 33, 1)),
        ),
      ),
      drawer: const MyDrawer(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 20),
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
          ),
          children: [
            Container(
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(14)),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(1, 2),
                      blurRadius: 8,
                      spreadRadius: 0,
                      color: Color.fromRGBO(0, 0, 0, 0.15))
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onLongPress: () {
                      showmyDialog();
                    },
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromRGBO(214, 3, 3, 0.7)),
                      child: SvgPicture.asset(
                        "assets/food.svg",
                        width: 40,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 11,
                  ),
                  Text(
                    "Food",
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(33, 33, 33, 1)),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onLongPress: () {
                showmyDialog();
              },
              child: Container(
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(14)),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(1, 2),
                      blurRadius: 8,
                      spreadRadius: 0,
                      color: Color.fromRGBO(0, 0, 0, 0.15),
                    )
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromRGBO(0, 148, 255, 0.7)),
                      child: SvgPicture.asset(
                        "assets/petrol.svg",
                        width: 40,
                      ),
                    ),
                    const SizedBox(
                      height: 11,
                    ),
                    Text(
                      "Fuel",
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(33, 33, 33, 1)),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onLongPress: () {
                showmyDialog();
              },
              child: Container(
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(14)),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(1, 2),
                      blurRadius: 8,
                      spreadRadius: 0,
                      color: Color.fromRGBO(0, 0, 0, 0.15),
                    )
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromRGBO(0, 174, 91, 0.7)),
                      child: SvgPicture.asset(
                        "assets/medicine.svg",
                        width: 40,
                      ),
                    ),
                    const SizedBox(
                      height: 11,
                    ),
                    Text(
                      "Medicine",
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(33, 33, 33, 1)),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onLongPress: () {
                showmyDialog();
              },
              child: Container(
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(14)),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(1, 2),
                        blurRadius: 8,
                        spreadRadius: 0,
                        color: Color.fromRGBO(0, 0, 0, 0.15))
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromRGBO(241, 38, 197, 0.7)),
                      child: SvgPicture.asset(
                        "assets/shopping.svg",
                        width: 40,
                      ),
                    ),
                    const SizedBox(
                      height: 11,
                    ),
                    Text(
                      "Shopping",
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(33, 33, 33, 1)),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
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
                "Add Category",
                style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(37, 37, 37, 1)),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
