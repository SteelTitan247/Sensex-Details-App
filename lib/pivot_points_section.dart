import 'package:flutter/material.dart';
import 'package:flutter_app_for_intern/widgets/new_table_row.dart';

class PivotPointsPart extends StatefulWidget {
  @override
  _PivotPointsPartState createState() => _PivotPointsPartState();
}

class _PivotPointsPartState extends State<PivotPointsPart> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Pivot Points',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w800,
            fontSize: MediaQuery.of(context).size.width*0.063,
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width*0.9,
          child: Table(
            defaultColumnWidth: FixedColumnWidth(20),
            border: TableBorder.all(color: Colors.white),
            children: [
              rowSpacer2(),
              rowSpacer2(),
              rowSpacer2(),
              rowSpacer2(),
              thirdTableRow("S3", 456.87),
              rowSpacer2(),
              thirdTableRow("S2", 456.87),
              rowSpacer2(),
              thirdTableRow("S2", 456.87),
              rowSpacer2(),
              thirdTableRow("PIVOT POINTS", 456.87),
              rowSpacer2(),
              thirdTableRow("R1", 456.87),
              rowSpacer2(),
              thirdTableRow("R2", 456.87),
              rowSpacer2(),
              thirdTableRow("R3", 456.87),
            ],
          ),
        ),
      ],
    );
  }
}
