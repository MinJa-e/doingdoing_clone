import 'dart:html';
import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
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
    CollectionReference testFire =
        FirebaseFirestore.instance.collection('todos');
    _todosProvider = Provider.of<TodosProvider>(context);

    return Container(
        margin: EdgeInsets.only(top: 16.0),
        width: 428,
        height: 500,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.white.withOpacity(0.5)),
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 18, horizontal: 28),
          child: StreamBuilder(
            stream: testFire.snapshots(),
            builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
              if (snapshot.hasData) {
                return ReorderableListView(
                  buildDefaultDragHandles: false,
                  //자동으로 생기는 두 줄 아이콘 삭제
                  onReorder: (int oldIndex, int newIndex) {
                    setState(() {
                      if (newIndex > oldIndex) {
                        newIndex -= 1;
                      }
                      // https://www.youtube.com/watch?v=ivjYPsFAmPo
                      // 파이어스토어 위 영상 보며, 테이블 불러오는거 까지만 함
                      // 새로 키면, Provider가 아닌 파이어스토어에서 데이터 가공하는 거로 변환하기
                      final moveTodo = _todosProvider.todos.removeAt(oldIndex);
                      _todosProvider.todos.insert(newIndex, moveTodo);
                    });
                  },
                  children: _todosProvider.todos.map((todo) {
                    //map(배열 각 요소에게 부여할 명칭)
                    var index = _todosProvider.todos.indexOf(todo);
                    //화살표 함수를 사용하면 변수 추가 불가능한지 공부하기

                    return Container(
                      //margin: EdgeInsets.symmetric(vertical:0 ,horizontal:24),
                      //key만 넣어주면 listTile로 return 안 해줘도 되는 듯?
                      key: Key(todo), //key가 있어야 각 인덱스로부터 요소 꺼내옴,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {
                                  _todosProvider.todos.removeAt(index);
                                  _todosProvider.notifyListeners();
                                },
                                icon: Icon(Icons.highlight_off,
                                    color: Colors.black),
                              ),
                              Text('$todo', style: TextStyle(fontSize: 18)),
                            ],
                          ),
                          ReorderableDragStartListener(
                            index: index,
                            child: Icon(Icons.menu, color: Colors.grey),
                          )
                        ],
                      ),
                    );
                  }).toList(),
                );
              }
              return CircularProgressIndicator();
            },
          ),
        ));
  }
}

/*
ReorderableListView(
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
              //map(배열 각 요소에게 부여할 명칭)
              var index = _todosProvider.todos.indexOf(todo);
              //화살표 함수를 사용하면 변수 추가 불가능한지 공부하기

              return Container(
                //margin: EdgeInsets.symmetric(vertical:0 ,horizontal:24),
                //key만 넣어주면 listTile로 return 안 해줘도 되는 듯?
                key: Key(todo), //key가 있어야 각 인덱스로부터 요소 꺼내옴,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            _todosProvider.todos.removeAt(index);
                            _todosProvider.notifyListeners();
                          },
                          icon: Icon(Icons.highlight_off, color: Colors.black),
                        ),
                        Text('$todo', style: TextStyle(fontSize: 18)),
                      ],
                    ),
                    ReorderableDragStartListener(
                      index: index,
                      child: Icon(Icons.menu, color: Colors.grey),
                    )
                  ],
                ),
              );
            }).toList(),
          )
*/
