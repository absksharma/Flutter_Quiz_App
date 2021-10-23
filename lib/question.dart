import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Question extends StatelessWidget {
  final String quesitonText;

  Question(this.quesitonText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
      child: Text(quesitonText,
          style: TextStyle(fontSize: 29), textAlign: TextAlign.center),
    );
  }
}
