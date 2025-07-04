import 'package:flutter/material.dart';

class GridPage extends StatelessWidget {
  const GridPage(
      {super.key, required this.path, required this.name, required this.text});
  final String path;
  final String name;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey[200],
      ),
      child: Column(children: [
        Stack(alignment: Alignment.topRight, children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image.asset(
                path,
                width: 125,
                height: 99,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15.0, left: 20.0, top: 20.0),
            child: Icon(
              Icons.favorite_border,
              color: Colors.white,
              size: 12,
            ),
          ),
        ]),
        Padding(
          padding: const EdgeInsets.only(bottom: 8, left: 8, right: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                name,
              ),
              SizedBox(
                width: 30,
              ),
              Icon(
                Icons.star,
                size: 20,
                color: Colors.yellow,
              ),
              Text(
                ' 4.8',
                style: TextStyle(fontSize: 14),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            spacing: 100,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                text,
                style: TextStyle(fontSize: 14),
              ),
              Icon(
                Icons.add_box_rounded,
                size: 20,
                color: Colors.orange,
              )
            ],
          ),
        )
      ]),
    );
  }
}
