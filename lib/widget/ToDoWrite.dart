import 'dart:ui';

import 'package:doingdoing_clone/provider/TodosProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TodoWrite extends StatefulWidget {
  const TodoWrite({Key? key}) : super(key: key);

  @override
  State<TodoWrite> createState() => _TodoWriteState();
}

class _TodoWriteState extends State<TodoWrite> {
  late TodosProvider _todosProvider; //late는 null이면 초기화 시점을 뒤로 미루는 변수
  String input = "";

  @override
  Widget build(BuildContext context) {
    _todosProvider = Provider.of<TodosProvider>(context);

    return Row(mainAxisAlignment: MainAxisAlignment.start, children: [
      Container(
        margin: EdgeInsets.only(left: 36.0),
        width: 400,
        child: TextField(
          onChanged: (String value) {
            input = value;
          },
          textAlign: TextAlign.start,
          decoration: InputDecoration(
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white70, width: 2)),
              enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white70, width: 2)),
              hintText: "할 일을 추가해주세요",
              hintStyle: TextStyle(color: Colors.black38)),
        ),
      ),
      IconButton(
          icon: Icon(Icons.add),
          iconSize: 28,
          color: Colors.white,
          onPressed: () {
            _todosProvider.add(input);
          }),
    ]);
  }
}
