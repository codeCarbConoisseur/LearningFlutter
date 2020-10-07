import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QuestionWidget extends StatelessWidget {
  final String _text;

  QuestionWidget(this._text);

  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.fromLTRB(20, 40, 20, 30),
      decoration:
          BoxDecoration(border: Border.all(color: Colors.cyan, width: 2)),
      child: Text(
        _text,
        style: TextStyle(
          color: Colors.purpleAccent,
          fontSize: 20,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
