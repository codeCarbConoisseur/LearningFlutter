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
  var _answers = ['answer 1', 'answer 2', 'answer 3'];

  var questionIndex = 0;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CupertinoPageScaffold(
          child: Column(
        children: [
          QuestionWidget("question $questionIndex"),
          AnswerWidget(_answers[0], onPressed: answerSelected),
          AnswerWidget(_answers[1], onPressed: answerSelected),
          AnswerWidget(_answers[2], onPressed: answerSelected),
        ],
      )),
    );
  }

  void answerSelected() {
    setState(() {
      questionIndex++;
    });
    print(questionIndex);
  }
}
