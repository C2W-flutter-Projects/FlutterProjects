import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.blue[50],
            child: Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 15, right: 15),
              child: Column(
                children: [
                  const SizedBox(
                    height: 56,
                  ),
                  Container(
                    color: Colors.white,
                    child: TextField(
                      controller: searchController,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.search),
                        hintText: "Where do you want to stay?",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(3.0),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10, left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 60,
                          width: 100,
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                  width: 4, color: Colors.deepPurpleAccent),
                            ),
                          ),
                          child: const Icon(
                            size: 30,
                            Icons.beach_access_rounded,
                            color: Colors.deepPurpleAccent,
                          ),
                        ),
                        Container(
                          height: 60,
                          width: 100,
                          child: const Icon(
                            size: 30,
                            Icons.terrain,
                            color: Colors.deepPurpleAccent,
                          ),
                        ),
                        Container(
                          height: 60,
                          width: 100,
                          child: const Icon(
                            size: 30,
                            Icons.business,
                            color: Colors.deepPurpleAccent,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    child: Column(
                      children: [
                        Image.asset("assets/images/place1.jpg"),
                        const SizedBox(
                          height: 16,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0, bottom: 10),
                          child: Row(
                            children: [
                              Text(
                                "Resort in Goa",
                                style: GoogleFonts.manrope(
                                    fontSize: 14, fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [],
                        ),
                      ],
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
