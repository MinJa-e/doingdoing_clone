import 'package:flutter/material.dart';

class PencilIcon extends StatelessWidget {
  const PencilIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          // 아이콘 테두리용
          width: 24.0,
          height: 24.0,
          margin: EdgeInsets.all(8.0),
          padding: EdgeInsets.all(0.0),
          child: IconButton(
              padding: EdgeInsets.all(0.0),
              icon: Icon(Icons.edit, size: 14.0),
              color: Colors.black,
              onPressed: () {}),
          decoration: BoxDecoration(
            border:
            Border.all(color: Colors.black, width: 1.8),
            borderRadius: BorderRadius.all(
              Radius.circular(99.0),
            ),
          ),
        ),
      ],
    );
  }
}
