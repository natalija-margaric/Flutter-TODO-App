import 'package:flutter/material.dart';

class TodoCard extends StatelessWidget {
  final String title;
  final bool completed;
  final Function(int) updateTodoCompletions;
  final int index;

  TodoCard(
      {required this.title,
      required this.completed,
      required this.updateTodoCompletions,
      required this.index});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        updateTodoCompletions(index);
      },
      child: FractionallySizedBox(
        //for all screen sizes
        widthFactor: 0.9,
        child: Card(
          child: Container(
            padding: EdgeInsets.all(20),
            height: 125,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                      completed //condition (true or false)
                          ? Icons.check //if its true returns everything after ?
                          : Icons.close,
                      //if its false returns everything after colon
                      color: completed ? Colors.green : Colors.red),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
