import 'dart:ui';

import 'package:flutter/material.dart';

class DateSelect extends StatefulWidget {
  const DateSelect({Key? key}) : super(key: key);

  @override
  State<DateSelect> createState() => _DateSelectState();
}

class _DateSelectState extends State<DateSelect> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20.0),
      width: 320,
      child: TextField(
        textAlign: TextAlign.start,
        decoration: InputDecoration(
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white70, width: 2)),
            enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white70, width: 2)),
            hintText: "날짜를 입력해주세요",
            hintStyle: TextStyle(color: Colors.black38)),
      ),
    );
  }
}
