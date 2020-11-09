import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuiz;

  Result(this.resultScore, this.resetQuiz);

  String get resultPhrase {
    String resultText = 'You are amazing';
    if (resultScore < 40) {
    } else if (resultScore < 20) {
      resultText = 'You are okay';
    } else if (resultScore < 12) {
      resultText = 'You can do good';
    } else {
      resultText = 'You can do good';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Restart Quiz'),
            textColor: Colors.blue,
            onPressed: resetQuiz,
          )
        ],
      ),
    );
  }
}
