import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

class Label extends StatefulWidget{
  const Label({Key? key, /*required this.date*/}) : super(key: key);
  /*final DateTime date;*/

  @override
  State<StatefulWidget> createState() {

    return _LabelState();
  }

}

class _LabelState extends State<Label> {

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      child: Container(
        margin: EdgeInsets.only(top: 24.0),
        padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 4.0),
        child: Container(
          child: Text("날짜",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0)),
          padding:
          EdgeInsets.symmetric(vertical: 6.0, horizontal: 24.0),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.red, width: 2.0),
            borderRadius: BorderRadius.all(Radius.circular(8.0) // POINT
            ),
          ),
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
              Radius.circular(8.0) //         <--- border radius here
          ),
        ),
      ),
    );
  }
}

