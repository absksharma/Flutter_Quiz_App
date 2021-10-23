// ignore_for_file: deprecated_member_use, avoid_print

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
// void main() => MyApp(); // Function with only one experssions

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answersQuestions() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
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
          title: const Text('My first Quiz App'),
        ),
        body: Column(
          children: [
            Text(questions[questionIndex]),
            RaisedButton(
              child: Text('Answer1 selected'),
              onPressed: answersQuestions,
            ),
            RaisedButton(
              child: Text('Answer2 selected'),
              onPressed: answersQuestions,
            ),
            RaisedButton(
              child: Text('Answer3 selected'),
              onPressed: answersQuestions,
            )
          ],
        ),
      ),
    );
  }
}
