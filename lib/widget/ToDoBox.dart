import 'dart:html';
import 'dart:ui';

import 'package:doingdoing_clone/provider/TodosProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ToDoBox extends StatefulWidget {
  const ToDoBox({Key? key}) : super(key: key);

  @override
  State<ToDoBox> createState() => _ToDoBoxState();
}

class _ToDoBoxState extends State<ToDoBox> {
  late TodosProvider _todosProvider;

  @override
  Widget build(BuildContext context) {
    _todosProvider = Provider.of<TodosProvider>(context);

    return Container(
      margin: EdgeInsets.only(top: 16.0),
      width: 428,
      height: 500,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.white.withOpacity(0.5)),
      child: ReorderableListView(
        buildDefaultDragHandles: false,
        //자동으로 생기는 두 줄 아이콘 삭제
        onReorder: (int oldIndex, int newIndex) {
          setState(() {
            if (newIndex > oldIndex) {
              newIndex -= 1;
            }
            final moveTodo = _todosProvider.todos.removeAt(oldIndex);
            _todosProvider.todos.insert(newIndex, moveTodo);
          });
        },
        children: _todosProvider.todos.map((todo) {
          var index = _todosProvider.todos.indexOf(todo);
          //화살표 함수를 사용하면 변수 추가 불가능한지 공부하기

          return ListTile(
            //map(배열 각 요소에게 부여할 명칭)
            key: Key(todo),
            //key가 있어야 각 인덱스로부터 요소 꺼내옴,
            leading: Icon(Icons.highlight_off, color: Colors.black),
            trailing: ReorderableDragStartListener(
              index: index,
              child: Icon(Icons.add),
            ),
            title: Text('$todo'),
          );
        }).toList(),
      ),
    );
  }
}

//Container(),IconButton(onPressed: () {  }, icon: null,)
/*
itemCount: _todosProvider.todos.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
              child:Text(_todosProvider.todos[index])
          );
        }
* */
