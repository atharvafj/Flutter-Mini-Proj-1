import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';
import './sampleQuestions.dart';

void main() {
  var app = MyApp();
  runApp(app);
}

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  var totalScore = 0;

  void resetQuiz() {
    setState(() {
      questionIndex = 0;
      totalScore = 0;
    });
  }

  void answerQuestion(int total) {
    setState(() {
      totalScore = totalScore + total;
      questionIndex += 1;
    });
    print(totalScore);
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: questionIndex < questions.length
            ? Quiz(answerQuestion, questions, questionIndex)
            : Center(child: Result(totalScore, resetQuiz)),
      ),
    );
  }
}
