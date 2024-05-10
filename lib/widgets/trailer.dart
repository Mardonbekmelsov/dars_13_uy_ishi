import 'package:flutter/material.dart';

class Trailer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 80,
          child: Row(
            children: [
              Card(
                clipBehavior: Clip.hardEdge,
                child: Image.asset(
                  "assets/images/trailer.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Trailer 3: Final",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "1m 45s",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Card(
                      color: Colors.black87,
                      child: Text(
                        "Uploading",
                        style: TextStyle(
                          color: Colors.deepPurple,
                        ),
                      )),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 15,
        )
      ],
    );
  }
}
