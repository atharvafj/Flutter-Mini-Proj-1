import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  Question(this.questionText);
  @override
  Widget build(BuildContext context) {
    //adding container for wrapping
    return Container(
        width: double.infinity, //complete screen width
        margin: EdgeInsets.all(10),
        child: Text(
          questionText,
          style: TextStyle(fontSize: 26, color: Colors.blue),
          textAlign: TextAlign.center,
        ));
  }
}
