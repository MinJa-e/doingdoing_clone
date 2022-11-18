import 'package:flutter/material.dart';

class CheckListWhite extends StatefulWidget {
  const CheckListWhite({Key? key}) : super(key: key);

  @override
  State<CheckListWhite> createState() => _CheckListWhiteState();
}

class _CheckListWhiteState extends State<CheckListWhite> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20.0),
      width: 320,
      child: TextField(
        textAlign: TextAlign.start,
        decoration: InputDecoration(
          hintText: "날짜를 입력해주세요",
        ),
      ),
    );
  }
}
