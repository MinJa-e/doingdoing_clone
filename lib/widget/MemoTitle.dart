import 'package:flutter/material.dart';

class MemoTitle extends StatelessWidget {
  const MemoTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 24.0),
      child: Text(
        "-- Doing Doing --",
        style:
        TextStyle(fontSize: 18.0, color: Colors.grey),
      ),
    );
  }
}
