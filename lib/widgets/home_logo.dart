import 'package:flutter/material.dart';

class HomeLogo extends StatefulWidget {
  final String imagePath;

  const HomeLogo({Key key, this.imagePath}) : super(key: key);

  @override
  _HomeLogoState createState() => _HomeLogoState();
}

class _HomeLogoState extends State<HomeLogo> {
  @override
  Widget build(BuildContext context) {
    return Image.asset(widget.imagePath,
        filterQuality: FilterQuality.high, fit: BoxFit.none, scale: 3);
  }
}
