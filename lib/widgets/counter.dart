import 'package:flutter/material.dart';

class Counter extends StatelessWidget {
  final int numberOfTodos;
  final int totalCompletion;

  Counter({required this.numberOfTodos, required this.totalCompletion});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "$totalCompletion/$numberOfTodos",
        style: TextStyle(
            fontSize: 75,
            color: totalCompletion == numberOfTodos
                ? Colors.green
                : Colors.deepPurple),
      ),
    );
  }
}
