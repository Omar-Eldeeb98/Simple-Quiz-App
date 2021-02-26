import 'package:flutter/material.dart';

class Results extends StatelessWidget {
  final int resultScore;
  final Function resetQuiz; 

  Results(this.resultScore , this.resetQuiz);

  String get resultPhrase {
    /*
    String resultText;
    if (resultScore <= 8) {
      resultText = 'you are so good';
    } else if (resultScore <= 12) {
      resultText = 'you are helpul';
    } else if (resultScore <= 16) {
      resultText = 'you are bad';
    } else {
      resultText = 'you are fucking Strange ??!!';
    }
    */

    //todo:
    String score = resultScore.toString();
    return 'your reslut is  ' + score + '/' + '3';
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Restart Quiz !'),
            onPressed: resetQuiz,
            textColor: Colors.blue,
          )
        ],
      ),
    );
  }
}
