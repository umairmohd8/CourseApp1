import 'package:course_app/result.dart';
import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';
import './quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = [
    {
      'questionText': 'What\'s your favourite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Green', 'score': 6},
        {'text': 'Blue', 'score': 8},
        {'text': 'Red', 'score': 9}
      ]
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': [
        {'text': 'Tiger', 'score': 5},
        {'text': 'Lion', 'score': 3},
        {'text': 'Cat', 'score': 10},
        {'text': 'Dog', 'score': 8}
      ]
    },
    {
      'questionText': 'What\'s your favourite weather?',
      'answers': [
        {'text': 'Sunny', 'score': 2},
        {'text': 'Rainy', 'score': 10},
        {'text': 'Stormy', 'score': 6},
        {'text': 'Cloudy', 'score': 8}
      ]
    },
  ];
  var _qsnIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
          _qsnIndex = 0;
          _totalScore = 0;
       });
    
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _qsnIndex = _qsnIndex + 1;
    });
    print(_qsnIndex);
    if (_qsnIndex < _questions.length) {
      print("we have more questions");
    } else {
      print("No more questions");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //darkTheme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first app'),
        ),
        body: _qsnIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _qsnIndex,
                questions: _questions,
              )
            : Result(_totalScore,_resetQuiz),
      ),
    );
  }
}
