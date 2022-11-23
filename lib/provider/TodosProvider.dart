import 'dart:html';

import 'package:flutter/material.dart';

class TodosProvider extends ChangeNotifier{

  List _todos = [];
  List get todos => _todos;

  add(String text){
    _todos.add(text);
    notifyListeners();//뭔지 나중에 자세하게 찾아보기 > 연관 위젯들을 전부 리빌딩 해주는 듯?
  }
}