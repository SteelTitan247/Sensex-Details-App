import 'package:flutter/material.dart';

class InfoBoxes extends StatelessWidget {

  final int flag;
  final Color color;
  final String text;

  InfoBoxes({this.flag, this.color, this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 30.0,),
      child: Container(
        width: 100.0,
        height: 40.0,
        decoration: BoxDecoration(
          color: flag==1 ? color : Colors.white,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
