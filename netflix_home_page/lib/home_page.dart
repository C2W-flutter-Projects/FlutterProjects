import 'package:flutter/material.dart';

class Home_page extends StatelessWidget {
  const Home_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          "NETFLIX",
          style: TextStyle(fontStyle: FontStyle.normal),
        ),
        actions: [
          SizedBox(
            width: 120,
          ),
          const Icon(
            Icons.search_sharp,
            color: Colors.white,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Movies
              SizedBox(
                height: 20,
              ),
              const Text(
                "Movies",
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: Colors.white,
                    fontStyle: FontStyle.normal,
                    fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          child: Image.network(
                            "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg",
                            height: 390,
                            width: 280,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.network(
                          "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg",
                          height: 390,
                          width: 280,
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.network(
                          "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg",
                          height: 390,
                          width: 280,
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              //Web Series
              SizedBox(
                height: 20,
              ),
              const Text(
                "Web Series",
                textAlign: TextAlign.start,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.network(
                          "https://assetscdn1.paytm.com/images/catalog/product/H/HO/HOMSHERLOCK-HOLHK-P63024784A1CC1B/1563111214645_0..jpg",
                          height: 220,
                          width: 160,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.network(
                          "https://dnm.nflximg.net/api/v6/2DuQlx0fM4wd1nzqm5BFBi6ILa8/AAAAQeIeKt7LlqIJPKrT4aQijclj7K43xRSU3dQXNESNdNbnnJbT6LLWVRT9srUUbHbOo-iOH-8v3o16pUDMQ6tCgNGlkvfwvDOprROIZpQ2rgHtop9rHvbYlvzavMmUSGBCXjynJ80dn4nqZzZmzIUJMQpS.jpg?r=943",
                          height: 220,
                          width: 160,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.network(
                          "https://www.tallengestore.com/cdn/shop/products/PeakyBlinders-NetflixTVShow-ArtPoster_125897c4-6348-41e8-b195-d203700ebcca.jpg?v=1619864555",
                          height: 220,
                          width: 160,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // Most Popular
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Most Popular",
                textAlign: TextAlign.start,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              const SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(
                          width: 30,
                        ),
                        Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0kR0gMemRl9ylPTzmmuQQVb10vo8n7kXL7BeHkeo_4lmJS56C8-WKIy_GYK12wnEmPlc",
                          height: 210,
                          width: 150,
                          fit: BoxFit.fill,
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZ5Cq8kozpWIaq5Aohw4rjKkh_eE7nUkDV5zcHClQaYw&s",
                          height: 210,
                          width: 150,
                          fit: BoxFit.fill,
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.network(
                          "https://dbdzm869oupei.cloudfront.net/img/posters/preview/91008.png",
                          height: 210,
                          width: 150,
                          fit: BoxFit.fill,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            icon: SizedBox(
              width: 20,
              child: Padding(
                padding: EdgeInsets.only(top: 10.0, right: 40),
                child: Icon(
                  Icons.home_filled,
                  color: Colors.black,
                ),
              ),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
              width: 20,
              child: Padding(
                padding: EdgeInsetsDirectional.symmetric(),
                child: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
              ),
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
              width: 20,
              child: Padding(
                padding: EdgeInsetsDirectional.symmetric(),
                child: Icon(
                  Icons.video_collection,
                  color: Colors.black,
                ),
              ),
            ),
            label: 'video',
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
              width: 20,
              child: Padding(
                padding: EdgeInsetsDirectional.symmetric(),
                child: Icon(
                  Icons.favorite_sharp,
                  color: Colors.black,
                ),
              ),
            ),
            label: 'like',
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
              width: 20,
              child: Padding(
                padding: EdgeInsetsDirectional.symmetric(),
                child: Icon(
                  Icons.account_circle_outlined,
                  color: Colors.black,
                ),
              ),
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
