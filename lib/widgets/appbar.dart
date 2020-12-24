import 'package:flutter/material.dart';

Widget Appbar(context) {
  return AppBar(
    backgroundColor: Colors.white70,
    title: Text(
      'Sensex',
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: MediaQuery.of(context).size.height*0.030,
      ),
    ),
    leading: Icon(
      Icons.arrow_back_ios_sharp,
      color: Colors.black,
      size: MediaQuery.of(context).size.height*0.03,
    ),
  );
}