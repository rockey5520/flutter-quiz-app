import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/answer.dart';
import 'package:flutter_complete_guide/quiz.dart';
import 'package:flutter_complete_guide/result.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What is your fav color',
      'answers': [
        {'text': 'White', 'score': 10},
        {'text': 'Red', 'score': 20},
        {'text': 'Black', 'score': 30},
        {'text': 'Green', 'score': 40},
      ]
    },
    {
      'questionText': 'what is your fav animal',
      'answers': [
        {'text': 'Rat', 'score': 10},
        {'text': 'Rabbit', 'score': 20},
        {'text': 'Lion', 'score': 30},
        {'text': 'Snake', 'score': 40},
      ]
    },
    {
      'questionText': 'what is you fav instructor',
      'answers': [
        {'text': 'Max', 'score': 10},
        {'text': 'Mat', 'score': 20},
        {'text': 'Rakesh', 'score': 100},
      ]
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('My First App!')),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
