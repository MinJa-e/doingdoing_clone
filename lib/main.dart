import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

enum Emo { A, B, C, D, E, F }

class _MyHomePageState extends State<MyHomePage> {
  bool _isChecked = false;
  Emo? _emo = Emo.A;

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
                // Respond to button press
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
              icon: Icon(Icons.add), color: Colors.black, onPressed: () {}),
        ],
      ),
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center, // 정렬
          children: <Widget>[
            SizedBox(
              child: Container(
                margin: EdgeInsets.only(top: 24.0),
                padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 4.0),
                child: Container(
                  child: Text("11월12일(토)"),
                  padding:
                      EdgeInsets.symmetric(vertical: 8.0, horizontal: 32.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.red, width: 2.0),
                    borderRadius: BorderRadius.all(Radius.circular(8.0) // POINT
                        ),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                      Radius.circular(8.0) //         <--- border radius here
                      ),
                ),
              ),
            ),
            SizedBox(
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
                        Row(
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
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 24.0),
                          child: Text(
                            "-- Doing Doing --",
                            style:
                                TextStyle(fontSize: 18.0, color: Colors.grey),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 24.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Checkbox(
                                      value: _isChecked,
                                      onChanged: (value) {
                                        setState(() {
                                          _isChecked = value!;
                                        });
                                      }),
                                  Container(
                                    width: 228,
                                    decoration: BoxDecoration(
                                      border: Border(
                                          bottom:
                                              BorderSide(color: Colors.black)),
                                    ),
                                    child: Text(
                                      "플러터 스터디",
                                      style: TextStyle(fontSize: 18.0),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Checkbox(
                                      value: _isChecked,
                                      onChanged: (value) {
                                        setState(() {
                                          _isChecked = value!;
                                        });
                                      }),
                                  Container(
                                    width: 228,
                                    decoration: BoxDecoration(
                                      border: Border(
                                          bottom:
                                              BorderSide(color: Colors.black)),
                                    ),
                                    child: Text(
                                      "플러터 스터디",
                                      style: TextStyle(fontSize: 18.0),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 24.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 40,
                                height: 40,
                                child: Radio(
                                  value: Emo.A,
                                  groupValue: _emo,
                                  onChanged: (Emo? value) {
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
                                  value: Emo.B,
                                  groupValue: _emo,
                                  onChanged: (Emo? value) {
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
                                  value: Emo.C,
                                  groupValue: _emo,
                                  onChanged: (Emo? value) {
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
                                  value: Emo.D,
                                  groupValue: _emo,
                                  onChanged: (Emo? value) {
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
                                  value: Emo.E,
                                  groupValue: _emo,
                                  onChanged: (Emo? value) {
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
                                  value: Emo.F,
                                  groupValue: _emo,
                                  onChanged: (Emo? value) {
                                    setState(() {
                                      _emo = value;
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 180,
                          child: TextField(
                            maxLines: null,
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              hintText: "오늘은 어떤 하루였나요?",
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
