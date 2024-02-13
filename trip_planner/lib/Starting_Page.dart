import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class StartingPage extends StatefulWidget {
  const StartingPage({Key? key}) : super(key: key);

  @override
  _StartingPageState createState() => _StartingPageState();
}

class _StartingPageState extends State<StartingPage> {
  List<String> imagelist = [
    "https://media.istockphoto.com/id/1266651692/photo/houseboat-in-alappuzha-backwaters-kerala.jpg?s=612x612&w=0&k=20&c=G432lmdUz9qrW6D4sZYxLe6K-Km85OEmZg0qpcGyRCI=",
    "https://media.istockphoto.com/id/511119416/photo/indian-landmark-gadi-sagar-in-rajasthan.jpg?s=612x612&w=0&k=20&c=dO7TbXh3sd6_QmgcF_nYi6ynyIAvPI5STavwzCDyWTI=",
    "https://images.unsplash.com/photo-1598091383021-15ddea10925d?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8a2FzaG1pcnxlbnwwfHwwfHx8MA%3D%3D",
    "https://cdn.pixabay.com/photo/2020/01/21/08/06/indian-temple-4782284_1280.jpg",
    "https://media.istockphoto.com/id/1224360439/photo/waiting-to-sail.jpg?s=612x612&w=0&k=20&c=XMtw1nX67rhb75bYZ4D_39WNkuHTaddHDjtsxz-2IJY=",
  ];
  final String backgroundImageURL =
      "https://png.pngtree.com/background/20210710/original/pngtree-may-day-labor-day-travel-background-template-picture-image_997780.jpg";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(backgroundImageURL),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "TripWise",
                  style: TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
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
                        color: Colors.teal),
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
                  // Add your card widgets here
                  // _buildCard(
                  //   imagelist[0],
                  // ),
                  // _buildCard(
                  //   imagelist[1],
                  // ),
                  // _buildCard(
                  //   imagelist[2],
                  // ),
                  // _buildCard(imagelist[3]),
                  // _buildCard(imagelist[4]),
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 30,
                      shadowColor: Colors.black,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.network(
                          "https://media.istockphoto.com/id/1266651692/photo/houseboat-in-alappuzha-backwaters-kerala.jpg?s=612x612&w=0&k=20&c=G432lmdUz9qrW6D4sZYxLe6K-Km85OEmZg0qpcGyRCI=",
                          height: 250,
                          width: 350,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 30,
                      shadowColor: Colors.black,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.network(
                          "https://media.istockphoto.com/id/511119416/photo/indian-landmark-gadi-sagar-in-rajasthan.jpg?s=612x612&w=0&k=20&c=dO7TbXh3sd6_QmgcF_nYi6ynyIAvPI5STavwzCDyWTI=",
                          height: 250,
                          width: 350,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 30,
                      shadowColor: Colors.black,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.network(
                          "https://images.unsplash.com/photo-1598091383021-15ddea10925d?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8a2FzaG1pcnxlbnwwfHwwfHx8MA%3D%3D",
                          height: 250,
                          width: 350,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 30,
                      shadowColor: Colors.black,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.network(
                          "https://cdn.pixabay.com/photo/2020/01/21/08/06/indian-temple-4782284_1280.jpg",
                          height: 250,
                          width: 350,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 30,
                      shadowColor: Colors.black,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.network(
                          "https://media.istockphoto.com/id/1224360439/photo/waiting-to-sail.jpg?s=612x612&w=0&k=20&c=XMtw1nX67rhb75bYZ4D_39WNkuHTaddHDjtsxz-2IJY=",
                          height: 250,
                          width: 350,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "Get Started",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.purple)),
            ),
          ],
        ),
      ),
    );
  }
}
