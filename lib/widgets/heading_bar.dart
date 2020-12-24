import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeadingBar1 extends StatelessWidget {

  final String field1;
  final String field2;
  final String field3;

  HeadingBar1({this.field1, this.field2, this.field3});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*0.93,
      height: MediaQuery.of(context).size.height*0.05,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
        color: Colors.grey[300],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(width: MediaQuery.of(context).size.width*0.01,),
          Text(
            field1,
            style: TextStyle(
              color: Colors.grey[600],
              fontWeight: FontWeight.w600,
              fontSize: MediaQuery.of(context).size.height*0.021,
            ),
          ),
          SizedBox(width: MediaQuery.of(context).size.width*0.245,),
          Text(
            field2,
            style: TextStyle(
              color: Colors.grey[600],
              fontWeight: FontWeight.w600,
              fontSize: MediaQuery.of(context).size.height*0.021,
            ),
          ),
          SizedBox(width: MediaQuery.of(context).size.width*0.26,),
          Text(
            field3,
            style: TextStyle(
              color: Colors.grey[600],
              fontWeight: FontWeight.w600,
              fontSize: MediaQuery.of(context).size.height*0.021,
            ),
          ),
          SizedBox(width: MediaQuery.of(context).size.width*0.009,),
        ],
      ),
    );
  }
}

class HeadingBar2 extends StatelessWidget {

  final String field1;
  final String field2;
  final String field3;

  HeadingBar2({this.field1, this.field2, this.field3});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*0.93,
      height: MediaQuery.of(context).size.height*0.05,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
        color: Colors.grey[300],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(width: MediaQuery.of(context).size.width*0.01,),
          Text(
            field1,
            style: TextStyle(
              color: Colors.grey[600],
              fontWeight: FontWeight.w600,
              fontSize: MediaQuery.of(context).size.height*0.021,
            ),
          ),
          SizedBox(width: MediaQuery.of(context).size.width*0.22,),
          Text(
            field2,
            style: TextStyle(
              color: Colors.grey[600],
              fontWeight: FontWeight.w600,
              fontSize: MediaQuery.of(context).size.height*0.021,
            ),
          ),
          SizedBox(width: MediaQuery.of(context).size.width*0.22,),
          Text(
            field3,
            style: TextStyle(
              color: Colors.grey[600],
              fontWeight: FontWeight.w600,
              fontSize: MediaQuery.of(context).size.height*0.020,
            ),
          ),
          SizedBox(width: MediaQuery.of(context).size.width*0.009,),
        ],
      ),
    );
  }
}
