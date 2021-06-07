import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextTitle extends StatelessWidget {
  String myText;

  TextTitle(this.myText);

  @override
  Widget build(BuildContext context) {
    return Text(
      myText,
      style: TextStyle(
        fontSize: 22.5,
        fontFamily: 'Ubuntu',
      ),
    );
  }
}
