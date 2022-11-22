import 'dart:ui';

import 'package:flutter/material.dart';

class ToDoBox extends StatefulWidget {
  const ToDoBox({Key? key}) : super(key: key);

  @override
  State<ToDoBox> createState() => _ToDoBoxState();
}

class _ToDoBoxState extends State<ToDoBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16.0),
      width: 428,
      height: 500,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.white.withOpacity(0.5)),
      child: Column(
        // https://sunnybong.tistory.com/262
        // 위 링크 보고 할일 추가 및 순서바꾸는 기능 만들기
        
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [],
      ),
    );
  }
}
