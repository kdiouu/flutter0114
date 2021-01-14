import 'package:flutter/material.dart';

class Ctext extends StatelessWidget {

  final newText;

  Ctext(this.newText);

  @override
  Widget build(BuildContext context) {
    return Text(newText);
  }
}