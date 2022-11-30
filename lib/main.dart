import 'package:doingdoing_clone/provider/TodosProvider.dart';
import 'package:doingdoing_clone/screens/HomeScreen.dart';
import 'package:doingdoing_clone/screens/WriteScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (BuildContext context) => TodosProvider())
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: new HomeScreen()),
    );
  }
}

/*
@override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        localizationsDelegates: const [],
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: ChangeNotifierProvider(
          create: (BuildContext context) {
            return TodosProvider();
          },
          child: HomeScreen(),
        )
        );
  }
 */
