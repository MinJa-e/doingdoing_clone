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

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

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
                //가장 바깥 네모
                margin: EdgeInsets.symmetric(vertical: 16.0, horizontal: 48.0),
                padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 4.0),
                child: Container(
                  alignment: Alignment.topRight,
                  //검정테두리 네모
                  width: 1000.0,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2.0),
                  ),
                  child: Column(
                      //mainAxisAlignment: MainAxisAlignment.center, // 정렬
                      children: <Widget>[
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
                            border: Border.all(color: Colors.black, width: 1.8),
                            borderRadius: BorderRadius.all(
                              Radius.circular(99.0),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: Text(
                            "- Doing Doing -",
                            style:
                                TextStyle(fontSize: 18.0, color: Colors.grey),
                          ),
                        ),
                      ]),
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
