import 'package:dars_13_uy_ishi/pages/secon_page.dart';
import 'package:flutter/material.dart';

class MovieContainer extends StatelessWidget {
  final String image;
  const MovieContainer({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const SecondPage(),
          ),
        );
      },
      child: Card(
        clipBehavior: Clip.hardEdge,
        child: Image.asset(
          fit: BoxFit.cover,
          image,
          height: 220,
          width: 170,
        ),
      ),
    );
  }
}
