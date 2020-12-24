import 'package:flutter/material.dart';

class Button extends StatefulWidget {

  final Color colour;
  final String text;

  Button({this.colour, this.text});

  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Text(
        widget.text,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: MediaQuery.of(context).size.width*0.043,
        ),
      ),
      backgroundColor: widget.colour,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5.0))),
      onPressed: () => print("Pressed ${MediaQuery.of(context).size.width}"),
    );
  }
}
