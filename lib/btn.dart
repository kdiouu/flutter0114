import 'package:flutter/material.dart';

class Btn extends StatelessWidget {
  final String text;
  final Function func;

  Btn(this.text, this.func);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Colors.blue,
      child: Text(text),
      onPressed: func,
    );
  }
}
