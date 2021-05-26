import 'package:flutter/material.dart';

class MenuImage extends StatefulWidget {
  final String imagePath;

  const MenuImage({Key key, this.imagePath}) : super(key: key);

  @override
  _MenuImageState createState() => _MenuImageState();
}

class _MenuImageState extends State<MenuImage> {
  @override
  Widget build(BuildContext context) {
    return Image.asset(widget.imagePath,
        filterQuality: FilterQuality.high, fit: BoxFit.none, scale: 3);
  }
}
