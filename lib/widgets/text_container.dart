import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextContainer extends StatelessWidget {
  String myText;

  TextContainer(this.myText);

  @override
  Widget build(BuildContext context) {
    return Text(
      myText,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w300,
        color: Colors.white,
      ),
    );
  }
}
