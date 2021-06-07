import 'package:flutter/material.dart';
import 'package:projeto_lab_es/fw_screens/flutter_screen.dart';
import 'package:projeto_lab_es/fw_screens/spring_screen.dart';
import 'package:projeto_lab_es/text.dart';
import '../widgets/menu_image.dart';
import '../widgets/text_container.dart';

class FwScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frameworks"),
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
            imagePath: "imagens/cat_fw.png",
          ),
          SizedBox(height: 120),
          MyText(
              "Frameworks são ferramentas que auxiliam na hora de construir um sistema"),
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
                  TextContainer("Spring Boot"),
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
                              builder: (BuildContext context) =>
                                  SpringScreen()),
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
                  TextContainer("Flutter e Dart"),
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
                              builder: (BuildContext context) =>
                                  FlutterScreen()),
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
