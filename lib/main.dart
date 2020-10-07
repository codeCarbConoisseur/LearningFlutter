import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_flutter/AnswerWidget.dart';
import 'package:test_flutter/QuestionWidget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // Properties:
  var questions = ['question 1', 'question 2', 'question 3'];
  var answers = ['answer 1', 'answer 2', 'answer 3'];

  var questionIndex = 0;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: MyHomeScreen(questions[0]),
    );
  }
}

class MyHomeScreen extends StatelessWidget {
  final String _data;

  MyHomeScreen(this._data);
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: Column(
      children: [
        QuestionWidget('question'),
        AnswerWidget('answer 1'),
        AnswerWidget('answer 2'),
        AnswerWidget('answer 3'),
      ],
    ));
  }
}
