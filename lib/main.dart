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
      'answers': ['Black', 'Green', 'Blue', 'Red']
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': ['Tiger', 'Lion', 'Cheetah', 'Cat', 'Dog']
    },
    {
      'questionText': 'What\'s your favourite weather?',
      'answers': ['Rainy', 'Sunny', 'Stormy']
    },
  ];
  var _qsnIndex = 0;

  void _answerQuestion() {
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
            : Result(),
      ),
    );
  }
}
