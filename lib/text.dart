import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyText extends StatelessWidget {
  String myText;

  MyText(this.myText);

  @override
  Widget build(BuildContext context) {
    return Text(
      myText,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w300,
        color: Colors.black,
      ),
    );
  }
}
