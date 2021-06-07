import 'package:flutter/material.dart';
import 'package:projeto_lab_es/lp_screens/java_screen.dart';
import 'package:projeto_lab_es/lp_screens/js_screen.dart';
import '../text.dart';
import '../widgets/menu_image.dart';
import '../widgets/text_container.dart';

class LpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Linguagens de Programação"),
        backgroundColor: Colors.blue[900],
      ),
      backgroundColor: Color.fromRGBO(0, 174, 255, 1),
      body: _fbScreen(context),
    );
  }

  _fbScreen(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 20),
          MenuImage(
            imagePath: "imagens/cat_lp.png",
          ),
          SizedBox(height: 120),
          MyText("Linguagens de Programação são o coração de um sistema"),
          SizedBox(height: 115),
          Container(
            height: 60,
            width: 380,
            margin: const EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.blue[900]),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                children: [
                  Spacer(),
                  TextContainer("Java"),
                  Spacer(),
                  IconButton(
                      icon: Icon(
                        Icons.arrow_forward_outlined,
                        color: Colors.white,
                        size: 30,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => JavaScreen()),
                        );
                      }),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            height: 60,
            width: 380,
            margin: const EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.blue[900]),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                children: [
                  Spacer(),
                  TextContainer("JavaScript e TypeScript"),
                  Spacer(),
                  IconButton(
                      icon: Icon(
                        Icons.arrow_forward_outlined,
                        color: Colors.white,
                        size: 30,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => JsScreen()),
                        );
                      }),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
