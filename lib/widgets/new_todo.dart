import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewTodo extends StatefulWidget {
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
            controller: _todoController,
            decoration: InputDecoration(labelText: "New Todo"),
          ),
          TextButton(
              onPressed: () {
                print(_todoController.text);
              },
              child: Text("ADD"))
        ],
      ),
    );
  }
}
