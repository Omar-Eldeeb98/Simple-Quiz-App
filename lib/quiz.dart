import 'package:flutter/material.dart';
import './answers.dart';
import './questions.dart';

class Quiz extends StatelessWidget {
  final int questionIndex;
  final List<Map<String, Object>> questions;
  final Function answerquestions;

  Quiz(
      {@required this.answerquestions,
      @required this.questions,
      @required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questions(
          questions[questionIndex]['question'],
        ),
        ...(questions[questionIndex]['answers'] as List<
                Map<String , Object>>) // now every answers key in maps is represented as a list of sting items
            .map(
                (answersKeyValues) // (answersKeyValues) just a string Variable that take the <answers list String items>, you can named this String  variable  as you want .
                {
          return Answers(()=> answerquestions(answersKeyValues['score']), answersKeyValues['text']);
        }).toList(),
      ],
    );
  } 
}
