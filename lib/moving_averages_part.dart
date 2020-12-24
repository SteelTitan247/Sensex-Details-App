import 'package:flutter/material.dart';
import 'package:flutter_app_for_intern/widgets/button.dart';
import 'package:flutter_app_for_intern/widgets/heading_bar.dart';
import 'package:flutter_app_for_intern/widgets/info_columns.dart';
import 'package:flutter_app_for_intern/widgets/new_table_row.dart';

class MovingAveragesPart extends StatefulWidget {
  @override
  _MovingAveragesPartState createState() => _MovingAveragesPartState();
}

class _MovingAveragesPartState extends State<MovingAveragesPart> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Moving Averages',
          style: TextStyle(
            fontSize: MediaQuery.of(context).size.width*0.063,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height*0.015,),
        Container(
          height: 40.0,
          width: 70.0,
          child: Button(text: "Buy", colour: Colors.blueAccent[700],),
        ),
        SizedBox(height: 20.0,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //crossAxisAlignment: CrossAxisAlignment.spa,
          children: [
            InfoColumn(number: 7, field: "Buy",),
            //SizedBox(width: 20.0,),
            InfoColumn(number: 0, field: "Neutral",),
            //SizedBox(width: 20.0,),
            InfoColumn(number: 5, field: "Sell",),
          ],
        ),
        SizedBox(height: MediaQuery.of(context).size.height*0.09),
        HeadingBar1(field1: "TITLE", field2: "VALUE", field3: "TYPE",),
        Container(
          width: MediaQuery.of(context).size.width*0.91,
          child: Table(
            defaultColumnWidth: FixedColumnWidth(20),
            border: TableBorder.all(color: Colors.white),
            children: [
              rowSpacer1(),
              newTableRow("MA10", 465.28, "SELL"),
              rowSpacer1(),
              newTableRow("MA20", 465.28, "BUY"),
              rowSpacer1(),
              newTableRow("MA50", 465.28, "BUY"),
              rowSpacer1(),
              newTableRow("MA100", 465.28, "SELL"),
              rowSpacer1(),
              newTableRow("MA200", 465.28, "BUY"),
            ],
          ),
        ),
      ],
    );
  }
}
