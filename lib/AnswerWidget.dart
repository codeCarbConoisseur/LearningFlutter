import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnswerWidget extends StatelessWidget {
  final String _text;

  AnswerWidget(this._text);

  Widget build(BuildContext context) {
    return CupertinoButton(
      child: Text(_text),
      onPressed: buttonPressed,
    );
  }

  void buttonPressed() {
    print('button pressed');
  }
}
