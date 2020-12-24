import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_for_intern/moving_averages_part.dart';
import 'package:flutter_app_for_intern/pivot_points_section.dart';
import 'package:flutter_app_for_intern/technical_indicators_section.dart';
import 'package:flutter_app_for_intern/widgets/appbar.dart';
import 'package:flutter_app_for_intern/widgets/color_bar.dart';
import 'time.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainContent(),
    );
  }
}

class MainContent extends StatefulWidget {
  @override
  _MainContentState createState() => _MainContentState();
}

class _MainContentState extends State<MainContent> {

  int flag1=0, flag2=0, flag3=0, flag4=0, flag5=0;
  Color color1=Colors.white, color2=Colors.white, color3=Colors.white, color4=Colors.white, color5=Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar(context),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height*0.1,),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Text(
                    'Summary',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.width*0.064,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ColorBar(
                    color1: Colors.blue[700],
                    color2: Colors.blue[500],
                    color3: Colors.grey[700],
                    color4: Colors.pink[200],
                    color5: Colors.red[700],),
                  SizedBox(width: MediaQuery.of(context).size.width*0.4,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TimeButton("1 MIN", MediaQuery.of(context).size.height*0.021),
                      TimeButton("5 MIN", MediaQuery.of(context).size.height*0.027),
                      TimeButton("15 MIN", MediaQuery.of(context).size.height*0.027),
                      TimeButton("30 MIN", MediaQuery.of(context).size.height*0.027),
                      TimeButton("1 HR", MediaQuery.of(context).size.height*0.027),
                      TimeButton("5 HR", MediaQuery.of(context).size.height*0.027),
                      TimeButton("1 DAY", MediaQuery.of(context).size.height*0.027),
                      TimeButton("1 WK", MediaQuery.of(context).size.height*0.027),
                      TimeButton("1 MN", MediaQuery.of(context).size.height*0.027),
                    ],
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.07),
              MovingAveragesPart(),
              SizedBox(height: MediaQuery.of(context).size.height*0.07),
              TechnicalIndicators(),
              SizedBox(height: MediaQuery.of(context).size.height*0.05),
              PivotPointsPart(),
            ],
          ),
      ),
    );
  }
}


