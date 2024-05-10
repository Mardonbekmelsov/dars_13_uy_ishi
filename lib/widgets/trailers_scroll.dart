import 'package:dars_13_uy_ishi/widgets/trailer.dart';
import 'package:flutter/material.dart';

class TrailerScroll extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 0; i < 4; i++) Trailer(),
      ],
    );
  }
}
