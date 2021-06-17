import 'package:flutter/material.dart';
import './question.dart';
import 'answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _qsnIndex = 0;

  void _answerQuestion() {
    setState(() {
      _qsnIndex = _qsnIndex + 1;
    });
    print(_qsnIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
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
    print(questions[_qsnIndex]['answers']);
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first app'),
        ),
        body: Column(
          children: [
            Question(
              questions[_qsnIndex]['questionText'],
            ),
            // Answer(_answerQuestion),
            //Answer(_answerQuestion),
            //Answer(_answerQuestion),
          ],
        ),
      ),
    );
  }
}
