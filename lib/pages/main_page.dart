import 'package:dars_13_uy_ishi/widgets/movie_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int index = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          color: Colors.black,
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              CupertinoIcons.search,
                              color: Colors.grey,
                            ),
                          ),
                          const Text(
                            "Search ",
                            style: TextStyle(color: Colors.grey),
                          ),
                          const SizedBox(width: 180),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: IconButton(
                          onPressed: () {}, icon: const Icon(Icons.tune)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Wrap(
                  children: [
                    for (int i = 0; i < 15; i++)
                      const MovieContainer(image: "assets/images/movie.jpg")
                  ],
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.home_rounded),
                  color: Colors.grey,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.explore),
                  color: Colors.deepPurple,
                ),
                label: ""),
            const BottomNavigationBarItem(
                icon: Icon(
                  Icons.bookmark_border,
                  color: Colors.grey,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.download),
                  color: Colors.grey,
                ),
                label: ""),
            const BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: Colors.grey,
                ),
                label: ""),
          ],
          currentIndex: index,
          onTap: (int i) {
            setState(() {
              index = i;
            });
          },
        ));
  }
}
