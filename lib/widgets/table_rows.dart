import 'package:flutter/material.dart';

class TableRows extends StatelessWidget {

  final String field1Value;
  final double field2Value;
  final String field3Value;

  TableRows({this.field1Value, this.field2Value, this.field3Value});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 35.0),
          child: Text(
            field1Value,
            style: TextStyle(
              color: Colors.black,
              fontSize: MediaQuery.of(context).size.height*0.023,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 10.0),
          child: Text(
            "$field2Value",
            style: TextStyle(
              color: Colors.black,
              fontSize: MediaQuery.of(context).size.height*0.023,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 35.0),
          child: Text(
            field3Value,
            style: TextStyle(
              color: field3Value=="SELL" || field3Value=="Sell" ? Colors.red : (field3Value=="NEUTRAL" || field3Value=="Neutral" ? Colors.grey : Colors.blue),
              fontSize: MediaQuery.of(context).size.height*0.023,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      ],
    );
  }
}
