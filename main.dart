// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'Questions.dart';
import 'answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(
      () {
        _questionIndex = _questionIndex + 1;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var Questions = [
      {
        'questionText': 'what\'i your favorite color ?',
        'answer': ['Black', 'Red', 'Green', 'White'],
      },
      {
        'question': 'what\'i your favorite animal ?',
        'answer': ['Rabbit', 'Snack', 'Elephant', 'Lion'],
      },
      {
        'question': 'what\'i your favorite instructor ?',
        'answer': ['Max', 'Max', 'Max', 'Max'],
      }
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('my first app'),
        ),
        body: Column(
          children: [
            Question(
              Questions[_questionIndex],
            ),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
          ],
        ),
      ),
    );
  }
}
