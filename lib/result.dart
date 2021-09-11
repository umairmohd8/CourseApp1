import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  Result(this.resultScore, this.resetHandler);

  //getters
  String get resultPhrase {
    String resultText = 'You did it!';
    if (resultScore <= 5) {
      resultText = 'You are awesome';
    } else if (resultScore <= 10) {
      resultText = 'You are a cat';
    } else if (resultScore <= 15) {
      resultText = 'You are an awesome catto';
    } else {
      resultText = 'You are a human, eww';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(onPressed: resetHandler, child: Text('Restart quiz'))
        ],
      ),
    );
  }
}
