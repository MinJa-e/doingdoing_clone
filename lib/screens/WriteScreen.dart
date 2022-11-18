import 'dart:html';

import 'package:doingdoing_clone/widget/CheckListWhite.dart';
import 'package:doingdoing_clone/widget/Label.dart';
import 'package:flutter/material.dart';

import '../widget/LabelDate.dart';

class WriteScreen extends StatefulWidget {
  const WriteScreen({Key? key}) : super(key: key);

  @override
  State<WriteScreen> createState() => _WriteScreenState();
}

class _WriteScreenState extends State<WriteScreen> {
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
            children: [Label(), CheckListWhite()],
          ),
        ],
      ),
    );
  }
}
