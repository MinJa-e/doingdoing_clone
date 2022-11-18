import 'package:doingdoing_clone/widget/Emo.dart';
import 'package:doingdoing_clone/widget/MemoTextField.dart';
import 'package:doingdoing_clone/widget/MemoTitle.dart';
import 'package:doingdoing_clone/widget/PencilIcon.dart';
import 'package:flutter/material.dart';

import 'CheckList.dart';

class MainMemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MainMemoState();
}

class _MainMemoState extends State<MainMemo> {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        //가장 바깥 네모
        margin: EdgeInsets.symmetric(vertical: 16.0, horizontal: 48.0),
        padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 4.0),
        child: Container(
          //검정테두리 네모
          width: 1000.0,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 2.0),
          ),
          child: Column(crossAxisAlignment: CrossAxisAlignment.center,
              //mainAxisAlignment: MainAxisAlignment.center, // 정렬
              children: <Widget>[
                PencilIcon(),
                MemoTitle(),
                Container(
                  //체크리스트 감싸주는 틀
                  margin: EdgeInsets.only(bottom: 24.0),
                  child: Column(
                    children: [
                      CheckList(),
                      CheckList(),
                      CheckList(),
                    ],
                  ),
                ),
                Container(
                  //감정칸 잡아주는 틀
                  margin: EdgeInsets.only(bottom: 24.0),
                  child: Emo(),
                ),
                MemoTextField(),
              ]),
        ),
      ),
    );
  }
}
