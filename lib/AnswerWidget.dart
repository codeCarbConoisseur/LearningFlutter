import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnswerWidget extends StatelessWidget {
  final String _text;
  final GestureTapCallback onPressed;

  AnswerWidget(this._text, {@required this.onPressed});

  Widget build(BuildContext context) {
    return CupertinoButton(
      child: Text(
        _text,
        style: TextStyle(
          fontSize: 20,
          color: Colors.green,
          fontWeight: FontWeight.bold,
        ),
      ),
      onPressed: onPressed,
    );
  }
}
