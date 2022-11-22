import 'package:flutter/material.dart';

class ToDoPlus extends StatefulWidget {
  const ToDoPlus({Key? key}) : super(key: key);

  @override
  State<ToDoPlus> createState() => _ToDoPlusState();
}

class _ToDoPlusState extends State<ToDoPlus> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: Icon(Icons.add),
        iconSize:28,
        color: Colors.white,
        onPressed: () {}
    );
  }
}


