import 'package:flutter/material.dart';
import 'package:flutter_todo_app/models/todo.dart';
import 'package:flutter_todo_app/widgets/counter.dart';
import 'package:flutter_todo_app/widgets/new_todo.dart';
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
    Todo(id: "1", title: "I'm a card one", completed: false),
    Todo(id: "2", title: "I'm a card two", completed: false),
    Todo(id: "3", title: "I'm a card three", completed: true)
  ];

  _showAddTodoModal(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (bCtx) {
          return NewTodo(addTodo: _addTodo);
        });
  }

  void _addTodo(String todo) {
    setState(() {
      todos.add(Todo(id: "123456", completed: false, title: todo));
    });
  }

  int _totalCompletions() {
    var total = 0;
    todos.forEach((todo) {
      if (todo.completed) {
        total++;
      }
    });

    return total;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Counter(
              numberOfTodos: todos.length,
              totalCompletion: _totalCompletions()),
          ...todos.map((todo) => TodoCard(
                title: todo.title,
                completed: todo.completed,
              ))
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showAddTodoModal(context);
        },
        backgroundColor: Colors.deepPurple,
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }
}
