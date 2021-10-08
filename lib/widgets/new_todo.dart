import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewTodo extends StatefulWidget {
  final Function(String) addTodo;

  NewTodo({required this.addTodo});

  @override
  _NewTodoState createState() => _NewTodoState();
}

class _NewTodoState extends State<NewTodo> {
  //get text input
  TextEditingController _todoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
      height: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          TextField(
            maxLength: 25,
            controller: _todoController,
            decoration: InputDecoration(labelText: "New Todo"),
          ),
          TextButton(
              onPressed: () {
                widget.addTodo(_todoController.text);
                Navigator.of(context).pop();
              },
              child: Text("ADD"))
        ],
      ),
    );
  }
}
