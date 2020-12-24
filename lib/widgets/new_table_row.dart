import 'package:flutter/material.dart';
import 'package:flutter_app_for_intern/widgets/new_table_cell.dart';

TableRow newTableRow(String info1, double info2, String info3) {
  return TableRow(
      children: [
        NewTableCell(info: info1, columnNo: 1),
        NewTableCell(info: info2.toString(), columnNo: 2,),
        NewTableCell(info: info3, columnNo: 3,),
      ]
  );
}

TableRow rowSpacer1() {
  return TableRow(
      children: [
        NewTableCell2(info: "", columnNo: 1),
        NewTableCell2(info: "", columnNo: 2,),
        NewTableCell2(info: "", columnNo: 3,),
      ]
  );
}

TableRow thirdTableRow(String info1, double info2) {
  return TableRow(
    children: [
      NewTableCell3(info: info1, columnNo: 1,),
      NewTableCell3(info: info2.toString(), columnNo: 2,),
    ]
  );
}

TableRow rowSpacer2() {
  return TableRow(
      children: [
        NewTableCell2(info: "", columnNo: 1),
        NewTableCell2(info: "", columnNo: 2,),
      ]
  );
}
