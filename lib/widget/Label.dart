import 'dart:ui';

import 'package:flutter/material.dart';

class Label extends StatefulWidget{
  const Label({Key? key, required this.text}) : super(key: key);
  final String text;

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
        //스크린 사이즈에 따라 상대 비율로 라벨 사이즈 조정 되게 변경
        // > 지금은 글자 수 따라 변경되서 통일성x
        margin: EdgeInsets.only(top: 16.0),
        padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 4.0),
        child: Container(
          child: Text(widget.text,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0)),
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

