import 'dart:ui';

import 'package:flutter/material.dart';

class TodoWrite extends StatefulWidget {
  const TodoWrite({Key? key}) : super(key: key);

  @override
  State<TodoWrite> createState() => _TodoWriteState();
}

class _TodoWriteState extends State<TodoWrite> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 36.0),
      width: 400,
      child: TextField(
        textAlign: TextAlign.start,
        decoration: InputDecoration(
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                    color: Colors.white70,width: 2
                )),
            enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
              color: Colors.white70,width: 2
            )),
            hintText: "할 일을 추가해주세요",
            hintStyle: TextStyle(color: Colors.black38)),
      ),
    );
  }
}
