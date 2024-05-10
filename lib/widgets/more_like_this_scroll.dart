import 'package:dars_13_uy_ishi/widgets/movie_container.dart';
import 'package:flutter/material.dart';

class MoreLikeThisScroll extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        for (int i = 0; i < 10; i++)
          MovieContainer(image: "assets/images/movie2.jpg")
      ],
    );
  }
}
