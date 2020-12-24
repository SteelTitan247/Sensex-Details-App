import 'package:flutter/material.dart';
import 'package:flutter_app_for_intern/widgets/info_boxes.dart';

class ColorBar extends StatefulWidget {

  final Color color1, color2, color3, color4, color5;

  ColorBar({this.color1, this.color2, this.color3, this.color4, this.color5});

  @override
  _ColorBarState createState() => _ColorBarState();
}

class _ColorBarState extends State<ColorBar> {

  int flag1=0, flag2=0, flag3=0, flag4=0, flag5=0;
  Color color1=Colors.white, color2=Colors.white, color3=Colors.white, color4=Colors.white, color5=Colors.white;

  changeColor(int flag) {
    setState(() {
      if(flag==1) {
        flag=0;
      }
      else {
        flag=1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  if(flag1==1) {
                    flag1=0;
                  }
                  else {
                    flag1=1;
                  }
                });
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0),
                    ),
                    color: widget.color1,
                  ),
                  width: 10.0,
                  height: 85.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    if(flag2==1) {
                      flag2=0;
                    }
                    else {
                      flag2=1;
                    }
                  });
                },
                child: Container(
                  width: 10.0,
                  height: 85.0,
                  color: widget.color2,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    if(flag3==1) {
                      flag3=0;
                    }
                    else {
                      flag3=1;
                    }
                  });
                },
                child: Container(
                  width: 10.0,
                  height: 85.0,
                  color: widget.color3,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    if(flag4==1) {
                      flag4=0;
                    }
                    else {
                      flag4=1;
                    }
                  });
                },
                child: Container(
                  width: 10.0,
                  height: 85.0,
                  color: widget.color4,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    if(flag5==1) {
                      flag5=0;
                    }
                    else {
                      flag5=1;
                    }
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                    ),
                    color: widget.color5,
                  ),
                  width: 10.0,
                  height: 85.0,
                ),
              ),
            ),
          ],
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: InfoBoxes(flag: flag1, color: Colors.blue[700], text: "Very Low",),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: InfoBoxes(flag: flag2, color: Colors.blue[500], text: "Low",),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: InfoBoxes(flag: flag3, color: Colors.grey[700], text: "Neutral",),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: InfoBoxes(flag: flag4, color: Colors.pink[200], text: "High",),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: InfoBoxes(flag: flag5, color: Colors.red[700], text: "Very High",),
            ),
          ],
        ),
      ],
    );
  }
}
