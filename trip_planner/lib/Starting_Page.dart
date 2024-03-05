import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'home_page.dart';

class StartingPage extends StatefulWidget {
  const StartingPage({Key? key}) : super(key: key);

  @override
  _StartingPageState createState() => _StartingPageState();
}

class _StartingPageState extends State<StartingPage> {
  // List<String> imagelist = [
  //   "https://media.istockphoto.com/id/1266651692/photo/houseboat-in-alappuzha-backwaters-kerala.jpg?s=612x612&w=0&k=20&c=G432lmdUz9qrW6D4sZYxLe6K-Km85OEmZg0qpcGyRCI=",
  //   "https://media.istockphoto.com/id/511119416/photo/indian-landmark-gadi-sagar-in-rajasthan.jpg?s=612x612&w=0&k=20&c=dO7TbXh3sd6_QmgcF_nYi6ynyIAvPI5STavwzCDyWTI=",
  //   "https://images.unsplash.com/photo-1598091383021-15ddea10925d?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8a2FzaG1pcnxlbnwwfHwwfHx8MA%3D%3D",
  //   "https://cdn.pixabay.com/photo/2020/01/21/08/06/indian-temple-4782284_1280.jpg",
  //   "https://media.istockphoto.com/id/1224360439/photo/waiting-to-sail.jpg?s=612x612&w=0&k=20&c=XMtw1nX67rhb75bYZ4D_39WNkuHTaddHDjtsxz-2IJY=",
  // ];
  // final String backgroundImageURL = "assets/bgimg2.jpg";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/bgimg5.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            color: Colors.black.withOpacity(0.5),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 60,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "TripWise",
                      style: TextStyle(
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 244, 160, 33),
                        fontFamily: 'Roboto',
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                const SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 10),
                      Text(
                        "Explore",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 300,
                  child: CarouselSlider(
                    options: CarouselOptions(
                      autoPlay: true,
                      aspectRatio: 16 / 9,
                      viewportFraction: 0.8,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      autoPlayCurve: Curves.easeInOut,
                      autoPlayAnimationDuration: Duration(seconds: 3),
                      enlargeCenterPage: true,
                    ),
                    items: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => home_page()));
                        },
                        child: Container(
                          margin: EdgeInsets.all(8.0),
                          child: Card(
                            elevation: 30,
                            shadowColor: Colors.black,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                "assets/cardimg1.jpg",
                                height: 250,
                                width: 350,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => home_page()));
                        },
                        child: Container(
                          margin: EdgeInsets.all(8.0),
                          child: Card(
                            elevation: 30,
                            shadowColor: Colors.black,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                "assets/cardimg2.jpg",
                                height: 250,
                                width: 350,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => home_page()));
                        },
                        child: Container(
                          margin: EdgeInsets.all(8.0),
                          child: Card(
                            elevation: 30,
                            shadowColor: Colors.black,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                "assets/cardimg3.jpg",
                                height: 250,
                                width: 350,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => home_page()));
                        },
                        child: Container(
                          margin: EdgeInsets.all(8.0),
                          child: Card(
                            elevation: 30,
                            shadowColor: Colors.black,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                "assets/cardimg4.jpg",
                                height: 250,
                                width: 350,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => home_page()));
                        },
                        child: Container(
                          margin: EdgeInsets.all(8.0),
                          child: Card(
                            elevation: 30,
                            shadowColor: Colors.black,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                "assets/cardimg5.jpg",
                                height: 250,
                                width: 350,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 90,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => home_page()),
                    );
                  },
                  child: Text(
                    "Get Started",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.indigo),
                  ),
                  style: const ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.cyanAccent)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
