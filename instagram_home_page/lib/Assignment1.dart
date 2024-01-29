import 'package:flutter/material.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Assignment1 extends StatefulWidget {
  const Assignment1({super.key});

  @override
  State<Assignment1> createState() => _Assignment1State();
}

class _Assignment1State extends State<Assignment1> {
  bool isLiked1 = false;
  bool isLiked2 = false;
  bool isLiked3 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "Instagram",
          style: TextStyle(
            fontStyle: FontStyle.italic,
            color: Colors.white,
            fontSize: 30,
          ),
        ),
        actions: [
          const Icon(
            Icons.keyboard_arrow_down_rounded,
            color: Colors.white,
          ),
          SizedBox(
            width: 120,
          ),
          const Icon(
            Icons.favorite_border_outlined,
            color: Colors.white,
          ),
          SizedBox(
            width: 20,
          ),
          const Icon(
            Icons.message_rounded,
            color: Colors.white,
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                child: Image.network(
                  "https://ewscripps.brightspotcdn.com/dims4/default/f8a4262/2147483647/strip/true/crop/3000x1575+0+195/resize/1200x630!/quality/90/?url=https%3A%2F%2Fewscripps.brightspotcdn.com%2Fe2%2F18%2F57b35159433caf90e23e5f177857%2Fap22250729514907.jpg",
                  width: double.infinity,
                  height: 200,
                ),
                //color: Colors.amber,
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        isLiked1 = !isLiked1;
                      });
                    },
                    icon: isLiked1
                        ? const Icon(
                            Icons.favorite_rounded,
                            color: Colors.red,
                          )
                        : const Icon(
                            Icons.favorite_border_outlined,
                            color: Colors.white,
                          ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.comment_outlined,
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.send,
                      color: Colors.white,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.bookmark_border_outlined,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Image.network(
                  "https://www.digitaltrends.com/wp-content/uploads/2018/08/rr_19my_250718_04.jpg?resize=1200%2C630&p=1",
                  width: double.infinity,
                  height: 200,
                ),
                //color: Colors.amber,
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        isLiked2 = !isLiked2;
                      });
                    },
                    icon: isLiked2
                        ? const Icon(
                            Icons.favorite_rounded,
                            color: Colors.red,
                          )
                        : const Icon(
                            Icons.favorite_border_outlined,
                            color: Colors.white,
                          ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.comment_outlined,
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.send,
                      color: Colors.white,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.bookmark_border_outlined,
                      color: Colors.white,
                    ),
                  ),
                ],
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Image.network(
                  "https://imgix.bustle.com/scary-mommy/2021/02/cars-quotes.jpg?w=1200&h=630&fit=crop&crop=faces&fm=jpg",
                  width: double.infinity,
                  height: 200,
                ),
                //color: Colors.amber,
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        isLiked3 = !isLiked3;
                      });
                    },
                    icon: isLiked3
                        ? const Icon(
                            Icons.favorite_rounded,
                            color: Colors.red,
                          )
                        : const Icon(
                            Icons.favorite_border_outlined,
                            color: Colors.white,
                          ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.comment_outlined,
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.send,
                      color: Colors.white,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.bookmark_border_outlined,
                      color: Colors.white,
                    ),
                  ),
                ],
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Image.network(
                  "https://carswitch.com/newsroom/wp-content/uploads/2019/03/2020-Land-Cruiser-Heritage-Edition-1200x630.jpg",
                  width: double.infinity,
                  height: 200,
                ),
                //color: Colors.amber,
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        isLiked2 = !isLiked2;
                      });
                    },
                    icon: isLiked2
                        ? const Icon(
                            Icons.favorite_rounded,
                            color: Colors.red,
                          )
                        : const Icon(
                            Icons.favorite_border_outlined,
                            color: Colors.white,
                          ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.comment_outlined,
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.send,
                      color: Colors.white,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.bookmark_border_outlined,
                      color: Colors.white,
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
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
                  Icons.add_box_rounded,
                  color: Colors.black,
                ),
              ),
            ),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
              width: 20,
              child: Padding(
                padding: EdgeInsetsDirectional.symmetric(),
                child: Icon(
                  Icons.play_circle_outline_sharp,
                  color: Colors.black,
                ),
              ),
            ),
            label: 'Reels',
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
      /*body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Image.network(
                    "https://e0.pxfuel.com/wallpapers/681/240/desktop-wallpaper-result-for-most-beautiful-green-mountain-landscape-sunrise-landscape-beautiful-landscapes.jpg",
                    width: double.infinity,
                    height: 200,
                  ),
                  //color: Colors.amber,
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.favorite_outline_outlined,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.comment_outlined,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.send,
                      ),
                    ),
                  ],
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Image.network(
                    "https://e0.pxfuel.com/wallpapers/681/240/desktop-wallpaper-result-for-most-beautiful-green-mountain-landscape-sunrise-landscape-beautiful-landscapes.jpg",
                    width: double.infinity,
                    height: 200,
                  ),
                  //color: Colors.amber,
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.favorite_outline_outlined,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.comment_outlined,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.send,
                      ),
                    ),
                  ],
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Image.network(
                    "https://e0.pxfuel.com/wallpapers/681/240/desktop-wallpaper-result-for-most-beautiful-green-mountain-landscape-sunrise-landscape-beautiful-landscapes.jpg",
                    width: double.infinity,
                    height: 200,
                  ),
                  //color: Colors.amber,
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.favorite_outline_outlined,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.comment_outlined,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.send,
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),*/
    );
  }
}
