// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  Answers(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
      child: RaisedButton(
        color: Colors.blue,
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}
