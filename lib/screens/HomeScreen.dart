import 'dart:html';

import 'package:doingdoing_clone/screens/WriteScreen.dart';
import 'package:doingdoing_clone/widget/LabelDate.dart';
import 'package:doingdoing_clone/widget/MainMemo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeState();
}

class _HomeState extends State<HomeScreen> {
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
              icon: Icon(Icons.navigate_before, size: 18),
              label: Text(
                "뒤로",
                style: TextStyle(fontSize: 16.0),
              ),
              style: TextButton.styleFrom(
                primary: Colors.black,
                padding: EdgeInsets.zero,
              )),
        ),
        actions: [
          IconButton(
              icon: Icon(Icons.more_horiz),
              color: Colors.black,
              onPressed: () {}),
          SizedBox(
            height: 10,
            child: ElevatedButton(
              onPressed: () {},
              child: Text('오늘'),
              style: ElevatedButton.styleFrom(primary: Colors.black54),
            ),
          ),
          IconButton(
              icon: Icon(Icons.add), color: Colors.black, onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (BuildContext context) =>
                  WriteScreen(),
            ));
          }),
        ],
      ),
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center, // 정렬
          children: [
            LabelDate(),
            MainMemo(),
          ],
        ),
      ),
    );
  }
}
