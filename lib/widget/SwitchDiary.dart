import 'package:flutter/material.dart';

class SwitchDiary extends StatefulWidget {
  const SwitchDiary({Key? key}) : super(key: key);

  @override
  State<SwitchDiary> createState() => _SwitchDiaryState();
}

class _SwitchDiaryState extends State<SwitchDiary> {
  bool _isCheckedDiary = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("일기 내용 보이기",
              style:
              TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0)),
          Switch(
            activeColor:Colors.white,
            activeTrackColor:Colors.redAccent,
            value: _isCheckedDiary,
            onChanged: (value) {
              setState(() {
                _isCheckedDiary = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
