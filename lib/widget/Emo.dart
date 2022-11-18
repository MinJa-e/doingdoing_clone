import 'package:flutter/material.dart';

class Emo extends StatefulWidget {
  const Emo({Key? key}) : super(key: key);

  @override
  State<Emo> createState() => _EmoState();
}

enum EmoArr { A, B, C, D, E, F }

class _EmoState extends State<Emo> {
  EmoArr? _emo = EmoArr.A;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 40,
          height: 40,
          child: Radio(
            value: EmoArr.A,
            groupValue: _emo,
            onChanged: (EmoArr? value) {
              setState(() {
                _emo = value;
              });
            },
          ),
        ),
        SizedBox(
          width: 40,
          height: 40,
          child: Radio(
            value: EmoArr.B,
            groupValue: _emo,
            onChanged: (EmoArr? value) {
              setState(() {
                _emo = value;
              });
            },
          ),
        ),
        SizedBox(
          width: 40,
          height: 40,
          child: Radio(
            value: EmoArr.C,
            groupValue: _emo,
            onChanged: (EmoArr? value) {
              setState(() {
                _emo = value;
              });
            },
          ),
        ),
        SizedBox(
          width: 40,
          height: 40,
          child: Radio(
            value: EmoArr.D,
            groupValue: _emo,
            onChanged: (EmoArr? value) {
              setState(() {
                _emo = value;
              });
            },
          ),
        ),
        SizedBox(
          width: 40,
          height: 40,
          child: Radio(
            value: EmoArr.E,
            groupValue: _emo,
            onChanged: (EmoArr? value) {
              setState(() {
                _emo = value;
              });
            },
          ),
        ),
        SizedBox(
          width: 40,
          height: 40,
          child: Radio(
            value: EmoArr.F,
            groupValue: _emo,
            onChanged: (EmoArr? value) {
              setState(() {
                _emo = value;
              });
            },
          ),
        ),
      ],
    );
  }
}
