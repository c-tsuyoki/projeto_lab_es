import 'package:flutter/material.dart';
import 'package:projeto_lab_es/cg_screens/back_screen.dart';
import 'package:projeto_lab_es/cg_screens/front_screen.dart';
import 'package:projeto_lab_es/text.dart';
import '../widgets/menu_image.dart';
import '../widgets/text_container.dart';

class CgScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Conceitos Gerais"),
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
            imagePath: "imagens/cat_cg.png",
          ),
          SizedBox(height: 120),
          MyText(
              "É importante entender estes conceitos para avançar na carreira"),
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
                  TextContainer("Back-End"),
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
                              builder: (BuildContext context) => BackScreen()),
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
                  TextContainer("Front-End"),
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
                              builder: (BuildContext context) => FrontScreen()),
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
