import 'package:flutter/material.dart';
import 'package:flutter_todo_app/models/todo.dart';
import 'package:flutter_todo_app/widgets/counter.dart';
import 'package:flutter_todo_app/widgets/todo_cards.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Todo> todos = [
    Todo(id: "1", title: "I'm a card one", completed: true),
    Todo(id: "2", title: "I'm a card two", completed: false),
    Todo(id: "3", title: "I'm a card three", completed: true)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Counter(),
          ...todos.map((todo) => TodoCard(
                title: todo.title,
                completed: todo.completed,
              ))
        ]),
      ),
    );
  }
}
