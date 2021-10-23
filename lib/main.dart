// ignore_for_file: deprecated_member_use, avoid_print
import 'package:flutter/material.dart';
import './question.dart';

void main() {
  runApp(MyApp());
}
// void main() => MyApp(); // Function with only one experssions

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answersQuestions() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'what\'s your name?',
      'What\'s your favorite animal',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first Quiz App'),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]),
            RaisedButton(
              child: Text('Answer1 selected'),
              onPressed: _answersQuestions,
            ),
            RaisedButton(
              child: Text('Answer2 selected'),
              onPressed: _answersQuestions,
            ),
            RaisedButton(
              child: Text('Answer3 selected'),
              onPressed: _answersQuestions,
            )
          ],
        ),
      ),
    );
  }
}
