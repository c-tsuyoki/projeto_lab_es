import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class ButtonContainer extends StatelessWidget {
  String linkUrl;
  final Function onPressed;
  ButtonContainer(this.linkUrl, {this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 320,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30), color: Colors.blue[900]),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Row(
          children: [
            Spacer(),
            Text(
              "Para saber mais",
              //myText,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w300,
                color: Colors.white,
                fontFamily: 'Ubuntu',
              ),
            ),
            Spacer(),
            IconButton(
              icon: Icon(
                Icons.arrow_forward_outlined,
                color: Colors.white,
                size: 30,
              ),
              onPressed: link,
            ),
          ],
        ),
      ),
    );
  }

  link() {
    launch(linkUrl);
  }
}
