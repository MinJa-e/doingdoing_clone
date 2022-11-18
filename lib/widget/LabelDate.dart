import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

class LabelDate extends StatefulWidget{
  const LabelDate({Key? key, /*required this.date*/}) : super(key: key);
  /*final DateTime date;*/

  @override
  State<StatefulWidget> createState() {

    return _LabelDateState();
  }

}

class _LabelDateState extends State<LabelDate> {

  @override
  Widget build(BuildContext context) {
    initializeDateFormatting();//언어 변경시 초기화 해줘야 한글 변경이 됨
  var nowDate = DateFormat('MM월 dd일 (E)','ko').format(DateTime.now());

    return SizedBox(
      child: Container(
        margin: EdgeInsets.only(top: 24.0),
        padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 4.0),
        child: Container(
          child: Text(nowDate,style: TextStyle(fontWeight: FontWeight.bold,)),
          padding:
          EdgeInsets.symmetric(vertical: 8.0, horizontal: 32.0),
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

