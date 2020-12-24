import 'package:flutter/material.dart';
import 'package:flutter_app_for_intern/widgets/button.dart';
import 'package:flutter_app_for_intern/widgets/heading_bar.dart';
import 'package:flutter_app_for_intern/widgets/info_columns.dart';
import 'package:flutter_app_for_intern/widgets/new_table_row.dart';

class TechnicalIndicators extends StatefulWidget {
  @override
  _TechnicalIndicatorsState createState() => _TechnicalIndicatorsState();
}

class _TechnicalIndicatorsState extends State<TechnicalIndicators> {

  int num=1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Technical Indicators',
          style: TextStyle(
            fontSize: MediaQuery.of(context).size.width*0.063,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height*0.015,),
        Container(
          height: 40.0,
          width: 120.0,
          child: Button(text: "Strong Sell", colour: Colors.redAccent[400],),
        ),
        SizedBox(height: 20.0,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //crossAxisAlignment: CrossAxisAlignment.spa,
          children: [
            InfoColumn(number: num, field: "Buy",),
            //SizedBox(width: 20.0,),
            InfoColumn(number: num, field: "Neutral",),
            //SizedBox(width: 20.0,),
            InfoColumn(number: 9, field: "Sell",),
          ],
        ),
        SizedBox(height: 20.0,),
        HeadingBar2(field1: "NAME", field2: "ACTION", field3: "VALUE",),
        Container(
          width: MediaQuery.of(context).size.width*0.91,
          child: Table(
            defaultColumnWidth: FixedColumnWidth(MediaQuery.of(context).size.width*0.25),
            border: TableBorder.all(color: Colors.white),
            children: [
              rowSpacer1(),
              newTableRow("RSI(14)", -53.6549, "Neutral"),
              rowSpacer1(),
              newTableRow("STOCH", -53.6549, "Sell"),
              rowSpacer1(),
              newTableRow("STOCHRSI(14)", -53.6549, "Sell"),
              rowSpacer1(),
              newTableRow("MACD(12,26)", -53.6549, "Buy"),
              rowSpacer1(),
              newTableRow("ADX(14)", -53.6549, "Sell"),
              rowSpacer1(),
              newTableRow("Williams %R", -53.6549, "Sell"),
              rowSpacer1(),
              newTableRow("CCI(14)", -53.6549, "Sell"),
              rowSpacer1(),
              newTableRow("ATR(14)", -53.6549, "Sell"),
              rowSpacer1(),
              newTableRow("Highs/Lows(14)", -53.6549, "Sell"),
              rowSpacer1(),
              newTableRow("Ultimate Oscillator", -53.6549, "Sell"),
              rowSpacer1(),
              newTableRow("ROC", -53.6549, "Sell"),
              rowSpacer1(),
              newTableRow("Bull/Bear Power(13)", -53.6549, "Less Volatility"),
            ],
          ),
        ),
    // TableRows(field1Value: "RSI(14)", field2Value: -53.6549, field3Value: "Neutral",),
        // TableRows(field1Value: "STOCH(9,6)", field2Value: -53.6549, field3Value: "Sell",),
        // TableRows(field1Value: "STOCHRSI(14)", field2Value: -53.6549, field3Value: "Sell",),
        // TableRows(field1Value: "MACD(12,26)", field2Value: -53.6549, field3Value: "Buy",),
        // TableRows(field1Value: "ADX(14)", field2Value: -53.6549, field3Value: "Sell",),
        // TableRows(field1Value: "Williams %R", field2Value: -53.6549, field3Value: "Sell",),
        // TableRows(field1Value: "CCI(14)", field2Value: -53.6549, field3Value: "Sell",),
        // TableRows(field1Value: "ATR(14)", field2Value: -53.6549, field3Value: "Sell",),
        // TableRows(field1Value: "Highs/Lows(14)", field2Value: -53.6549, field3Value: "Sell",),
        // TableRows(field1Value: "ULTIMATE OSCILLATOR", field2Value: -53.6549, field3Value: "Sell",),
        // TableRows(field1Value: "ROC", field2Value: -53.6549, field3Value: "Sell",),
        // TableRows(field1Value: "Bull/Bear Power(13)", field2Value: -53.6549, field3Value: "Less Volatility",),
      ],
    );
  }
}
