import 'package:flutter/material.dart'; // now files of flutter framework will exposes to you !
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  // private class
  var _questionIndex = 0; // private attribute
  var _totalScore = 0;

  static const _questions = [
    // list of maps as a dataType .

    {
      // map 1  => this is the item number 1 in the questions List
      'question': 'What\'s the rabbit eat ?',
      'answers': [
        {'text': 'meat', 'score': 0},
        {'text': 'carrots', 'score': 1},
        {'text': 'ice-Cream', 'score': 0},
        {'text': 'non of them', 'score': 0}
      ],
    },
    {
      // map 2  => this is the item number 2 in the questions List
      'question': 'What\'s the lion eat?',
      'answers': [
        {'text': 'meat', 'score': 1},
        {'text': 'carrots', 'score': 0},
        {'text': 'non of them', 'score': 0}
      ],
    },
    {
      // map 3 => this is the item number 3 in the questions List
      'question': 'What\'s the capital of egypt?',
      'answers': [
        {'text': 'Cairo', 'score': 1},
        {'text': 'Alexandria', 'score': 0}
      ],
    }
  ];

  void _answerQuestion(int score) {
    // private fuction

    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });

    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      // indexs of Lists must be (<) Lists.lenght , because Index start from => 0 , and Lenght start counting  from => 1

      print(
          'We still have more questions !'); // if this codition (_questionIndex < questions.length) still true , this method will be printed every time .
    } else {
      print('No More questions...');
    }
  }

  void _resetQuiz() {
    // this method will restting the quiz if it called
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(
      BuildContext //BuildContext is a special object type provided by flutter in the matrial.dart
          context) {
    return MaterialApp(
      home: Scaffold(
        appBar: new AppBar(
          title: Text(
            'Quiz App ',
          ),
          backgroundColor: Colors.blue,
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerquestions: _answerQuestion,
                questions: _questions,
                questionIndex: _questionIndex,
              )
            : Results(_totalScore , _resetQuiz),
      ),
    );
  }
}
