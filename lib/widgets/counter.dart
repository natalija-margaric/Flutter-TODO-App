import 'package:flutter/material.dart';

class Counter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "0/7",
        style: TextStyle(
          fontSize: 75,
          color: Colors.pink,
        ),
      ),
    );
  }
}
