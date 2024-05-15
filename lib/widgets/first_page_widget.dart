// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MapAll extends StatelessWidget {
  final String textManagerTitle;
  final String textManagerBody;

  const MapAll({
    super.key,
    required this.textManagerBody,
    required this.textManagerTitle,
  });

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth * 0.8,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        color: Color.fromARGB(11, 103, 80, 164),
        borderRadius: BorderRadius.all(
          Radius.circular(28),
        ),
      ),
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Text(
            textManagerTitle,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            textManagerBody,
          )
        ],
      ),
    );
  }
}
