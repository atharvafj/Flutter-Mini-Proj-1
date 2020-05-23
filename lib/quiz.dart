import 'package:flutter/material.dart';
import './question.dart';
import './Answers.dart';

class Quiz extends StatelessWidget {
  final Function answerQuestion;
  final List<String> questions;
  final int questionIndex;
  Quiz(this.answerQuestion, this.questions, this.questionIndex);
  int currentFeedbackValue = 1;

  void setFeedbackValue(int feedbackValue) {
    currentFeedbackValue = feedbackValue;
    print(currentFeedbackValue);
  }

  static const initFeedbackValue = 3;

  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(questions[questionIndex]),

        SizedBox(
          height: 10,
        ),

        Answer(
          setFeedbackValue: setFeedbackValue,
          initValue: initFeedbackValue,
        ),

        SizedBox(
          height: 10,
        ),

        RaisedButton(
          child: Text('Next'),
          onPressed: () => answerQuestion(currentFeedbackValue),
        ),

        // ...(questions[questionIndex]['answer'] as List<Map<String, Object>>)
        //     .map((answers) {
        //   return Answer(
        //       () => answerQuestion(answers['score']), answers['text']);
        // }).toList()
        //Answer(answerQuestion),
        //Answer(answerQuestion),
      ],
    );
  }
}
