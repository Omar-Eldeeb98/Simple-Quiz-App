import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final Function
      selectedHandler; //  class fuction attrribute (pointer as a function )

  final String answerText;

  Answers(
      this.selectedHandler, // constructor to pass the method inside it ...
      this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      width: double.infinity,
      child: RaisedButton(
        textColor: Colors.white,
        color: Colors.blue,
        child: Text(
          answerText,
        ),
        onPressed: selectedHandler,
      ),
    );
  }
}
