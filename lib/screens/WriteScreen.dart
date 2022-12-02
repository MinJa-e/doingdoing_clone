import 'dart:html';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:doingdoing_clone/widget/DateSelect.dart';
import 'package:doingdoing_clone/widget/Label.dart';
import 'package:doingdoing_clone/widget/ToDoBox.dart';
import 'package:doingdoing_clone/widget/ToDoWrite.dart';
import 'package:flutter/material.dart';

import '../widget/SwitchDiary.dart';

class WriteScreen extends StatefulWidget {
  const WriteScreen({Key? key}) : super(key: key);

  @override
  State<WriteScreen> createState() => _WriteScreenState();
}

class _WriteScreenState extends State<WriteScreen> {
  CollectionReference testFire = FirebaseFirestore.instance.collection('todos');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey,
        leading: SizedBox(
          child: TextButton.icon(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.navigate_before, size: 32),
            style: TextButton.styleFrom(
              primary: Colors.black,
              padding: EdgeInsets.zero,
            ),
            label: Text(
              "",
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Label(
                text: "날짜",
              ),
              DateSelect()
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Label(
                text: "할일",
              ),
              Container(margin: EdgeInsets.only(left: 20.0), width: 320)
            ],
          ),
          TodoWrite(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ToDoBox(),
            ],
          ),
          SwitchDiary(),
        ],
      ),
    );
  }
}
