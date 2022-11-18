import 'package:flutter/material.dart';

class MemoTextField extends StatefulWidget {
  const MemoTextField({Key? key}) : super(key: key);

  @override
  State<MemoTextField> createState() => _MemoTextFieldState();
}

class _MemoTextFieldState extends State<MemoTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      child: TextField(
        keyboardType: TextInputType.multiline,
        maxLines: null,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          hintText: "오늘은 어떤 하루였나요?",
          border: InputBorder.none,
        ),
      ),
    );
  }
}
