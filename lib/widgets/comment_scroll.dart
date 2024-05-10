import 'package:dars_13_uy_ishi/widgets/comment.dart';
import 'package:flutter/material.dart';

class CommentScroll extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "24.6k Comments",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "See All",
                style: TextStyle(color: Colors.deepPurple),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
        for (int i = 0; i < 5; i++) Comment(),
      ],
    );
  }
}
