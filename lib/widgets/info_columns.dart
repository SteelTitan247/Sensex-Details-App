import 'package:flutter/material.dart';

class InfoColumn extends StatefulWidget {

  final int number;
  final String field;

  InfoColumn({this.number, this.field});

  @override
  _InfoColumnState createState() => _InfoColumnState();
}

class _InfoColumnState extends State<InfoColumn> {

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          widget.number==0 ? "-" : "${widget.number}",
          //"${widget.stringValue}",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w800,
            fontSize: MediaQuery.of(context).size.height*0.025,
          ),
        ),
        SizedBox(),
        Text(
          widget.field,
          style: TextStyle(
            color: Colors.black54,
            fontWeight: FontWeight.bold,
            fontSize: MediaQuery.of(context).size.height*0.022,
          ),
        ),
      ],
    );
  }
}
