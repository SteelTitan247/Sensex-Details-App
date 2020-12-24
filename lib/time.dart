import 'package:flutter/material.dart';

class TimeButton extends StatefulWidget {

  final String text;
  final double size;

  TimeButton(this.text, this.size);

  @override
  _TimeButtonState createState() => _TimeButtonState();
}

class _TimeButtonState extends State<TimeButton> {

  Color _color=Colors.white;
  Color _textColor=Colors.grey;
  int flag=0;

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      height: 35.0,
      minWidth: 22.0,
      child: OutlineButton(
        shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(5.0),
        ),
        borderSide: BorderSide(
          color: _color,
          width: 3.0,
        ),
        child: Text(
          widget.text,
          style: TextStyle(
            fontSize: MediaQuery.of(context).size.height*0.020,
            color: _textColor,
          ),
        ),
        onPressed: () {
          setState(() {
            if(flag==0) {
              _color=Colors.black;
              _textColor=Colors.black;
              flag=1;
            }
            else {
              _color=Colors.white;
              _textColor=Colors.grey;
              flag=0;
            }
          });
        },
      ),
    );
  }
}
