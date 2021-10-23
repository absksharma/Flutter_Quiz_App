// ignore_for_file: deprecated_member_use, avoid_print
import 'package:flutter/material.dart';
import './question.dart';
import './answers.dart';

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
    final questions = [
      {
        'questionText': 'what\'s your Favorite color?',
        'answers': ['RED', 'BLACK', 'GREEN', 'YELLOW']
      }, 
      {
        'questionText': 'what\'s your Favorite Animal?',
        'answers': ['RABBIT', 'SNAKE', 'ELEPHANT', 'LION']
      },
      {
        'questionText': 'who\'s your Ideal person?',
        'answers': ['NOBODY', 'MOTHER', 'FATHER', 'YOU']
      },
      
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first Quiz App'),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]['questionText']as String,),
            ...(questions[_questionIndex]['answers']as List<String>).map((answers) {
              return Answers(_answersQuestions,answers); 
           }).toList()
          ],
        ),
      ),
    );
  }
}
