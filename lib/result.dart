import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function fxn;
  final int finalScore;
  Result(this.finalScore, this.fxn);

  final List<Map<String, dynamic>> result = [
    {
      "resultText": "We are sorry for the inconvenience",
      "resultColor": Colors.red,
      "min": 1,
      "max": 10
    },
    {
      "resultText": "Hope we serve you better next time",
      "resultColor": Colors.yellow,
      "min": 11,
      "max": 20
    },
    {
      "resultText": "We hope you come back next time",
      "resultColor": Colors.green,
      "min": 21,
      "max": 30
    },
  ];

  Map<String, dynamic> get results {
    var finalResult;
    result.forEach((result) {
      if (finalScore >= result['min'] && finalScore <= result['max']) {
        finalResult = result;
      }
    });
    return finalResult;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: Column(
        children: <Widget>[
          Text(
            results['resultText'],
            style: TextStyle(
              fontSize: 40,
              color: results['resultColor'],
            ),
            textAlign: TextAlign.center,
            softWrap: true,
          ),
          FlatButton(
            child: Text('Restart'),
            onPressed: fxn,
          )
        ],
      ),
    );
  }
}
