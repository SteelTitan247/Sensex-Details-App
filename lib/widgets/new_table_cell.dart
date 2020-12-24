import 'package:flutter/material.dart';

class NewTableCell extends StatelessWidget {

  final int columnNo;
  final String info;

  NewTableCell({this.columnNo, this.info});

  @override
  Widget build(BuildContext context) {
    return TableCell(
      verticalAlignment: TableCellVerticalAlignment.middle,
      child: Text(
        info,
        textAlign: columnNo==1 ? TextAlign.start : (columnNo==2 ? TextAlign.center : TextAlign.end),
        style: TextStyle(
          fontSize: MediaQuery.of(context).size.height*0.016,
          color: info=="SELL" || info=="Sell" ? Colors.red : (info=="NEUTRAL" || info=="Neutral" ? Colors.grey : info=="Buy"|| info=="BUY" ? Colors.blue : Colors.black),
          fontWeight: FontWeight.w800,
        ),
      ),
    );
  }
}

class NewTableCell2 extends StatelessWidget {

  final int columnNo;
  final String info;

  NewTableCell2({this.columnNo, this.info});

  @override
  Widget build(BuildContext context) {
    return TableCell(
      verticalAlignment: TableCellVerticalAlignment.middle,
      child: Text(
        info,
        textAlign: columnNo==1 ? TextAlign.start : (columnNo==2 ? TextAlign.center : TextAlign.end),
        style: TextStyle(
          fontSize: MediaQuery.of(context).size.height*0.015,
          color: info=="SELL" || info=="Sell" ? Colors.red : (info=="NEUTRAL" || info=="Neutral" ? Colors.grey : info=="Buy"|| info=="BUY" ? Colors.blue : Colors.black),
          fontWeight: FontWeight.w100,
        ),
      ),
    );
  }
}

class NewTableCell3 extends StatelessWidget {

  final int columnNo;
  final String info;

  NewTableCell3({this.columnNo, this.info});

  @override
  Widget build(BuildContext context) {
    return TableCell(
      verticalAlignment: TableCellVerticalAlignment.middle,
      child: Text(
        info,
        textAlign: columnNo==1 ? TextAlign.start : TextAlign.end,
        style: TextStyle(
          fontSize: MediaQuery.of(context).size.height*0.017,
          color: columnNo==1 ? Colors.grey : Colors.black,
          fontWeight: FontWeight.w900,
        ),
      ),
    );
  }
}

