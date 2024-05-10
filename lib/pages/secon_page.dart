import 'package:dars_13_uy_ishi/controllers/scrolls.dart';
import 'package:dars_13_uy_ishi/widgets/comment_scroll.dart';
import 'package:dars_13_uy_ishi/widgets/more_like_this_scroll.dart';
import 'package:dars_13_uy_ishi/widgets/profile.dart';
import 'package:dars_13_uy_ishi/widgets/trailers_scroll.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  Color color1 = Colors.deepPurple;

  Color color2 = Colors.grey;

  Color color3 = Colors.grey;

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 220,
            width: double.infinity,
            child: Image.asset(
              "assets/images/movie.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Flexible(
            child: SingleChildScrollView(
              child: Container(
                color: Colors.black,
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    const Row(
                      children: [
                        Expanded(
                          child: Text(
                            "Avatar: The Way Of Water",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Icon(
                          Icons.bookmark_border,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.send,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(
                          Icons.star,
                          color: Colors.deepPurple,
                        ),
                        const Text(
                          "9.8 >",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.deepPurple),
                        ),
                        const Text(
                          "2022",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        const Chip(
                          padding: EdgeInsets.all(5),
                          backgroundColor: Colors.black,
                          label: Text(
                            "13+",
                            style: TextStyle(
                                color: Colors.deepPurple,
                                fontWeight: FontWeight.bold),
                          ),
                          side: BorderSide(color: Colors.deepPurple, width: 3),
                        ),
                        const Chip(
                          padding: EdgeInsets.all(5),
                          backgroundColor: Colors.black,
                          label: Text(
                            "Fantastic",
                            style: TextStyle(
                                color: Colors.deepPurple,
                                fontWeight: FontWeight.bold),
                          ),
                          side: BorderSide(color: Colors.deepPurple, width: 3),
                        ),
                        Chip(
                          padding: const EdgeInsets.all(5),
                          backgroundColor: Colors.black,
                          label: Text(
                            "Fantastic",
                            style: TextStyle(
                                color: Colors.deepPurple.shade900,
                                fontWeight: FontWeight.bold),
                          ),
                          side: const BorderSide(
                              color: Colors.deepPurple, width: 3),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.deepPurple,
                              borderRadius: BorderRadius.circular(30)),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 45, vertical: 8),
                          child: const Row(
                            children: [
                              Icon(
                                Icons.play_circle,
                                color: Colors.white,
                                size: 30,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                "Play",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              )
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.deepPurple, width: 3),
                              borderRadius: BorderRadius.circular(30)),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 45, vertical: 8),
                          child: const Row(
                            children: [
                              Icon(
                                Icons.download,
                                color: Colors.deepPurple,
                                size: 30,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                "Play",
                                style: TextStyle(
                                    color: Colors.deepPurple,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      "Genre: Action, Superhero, Science Fiction, Romance, Thriller...",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    RichText(
                      text: TextSpan(text: loremIpsum(words: 20)),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [for (int i = 0; i < 5; i++) const Profile()],
                      ),
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              color1 = Colors.deepPurple;
                              color2 = Colors.grey;
                              color3 = Colors.grey;
                              index = 0;
                            });
                          },
                          child: Flexible(
                            child: Container(
                              width: 120,
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(color: color1, width: 3),
                                ),
                              ),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Trailers",
                                    style: TextStyle(
                                        color: Colors.deepPurple,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              color1 = Colors.grey;
                              color2 = Colors.deepPurple;
                              color3 = Colors.grey;
                              index = 1;
                            });
                          },
                          child: Container(
                            width: 120,
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(color: color2, width: 3),
                              ),
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "More Like This",
                                  style: TextStyle(
                                      color: Colors.deepPurple,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              color1 = Colors.grey;
                              color2 = Colors.grey;
                              color3 = Colors.deepPurple;
                              index = 2;
                            });
                          },
                          child: Container(
                            width: 120,
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(color: color3, width: 3),
                              ),
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Comments",
                                  style: TextStyle(
                                      color: Colors.deepPurple,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    scrolls[index]
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
