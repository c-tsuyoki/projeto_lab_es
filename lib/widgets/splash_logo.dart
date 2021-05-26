import 'package:flutter/material.dart';

class SplashLogo extends StatefulWidget {
  final String imagePath;

  const SplashLogo({Key key, this.imagePath}) : super(key: key);

  @override
  _SplashLogoState createState() => _SplashLogoState();
}

class _SplashLogoState extends State<SplashLogo> {
  @override
  Widget build(BuildContext context) {
    return Image.asset(widget.imagePath,
        filterQuality: FilterQuality.high, fit: BoxFit.fitHeight, scale: 1);
  }
}
