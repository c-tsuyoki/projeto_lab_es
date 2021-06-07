import 'package:flutter/material.dart';
import 'package:projeto_lab_es/fb_screens/logic_screen.dart';
import 'package:projeto_lab_es/fb_screens/poo_screen.dart';
import 'package:projeto_lab_es/text.dart';
import '../widgets/text_title.dart';
import '../widgets/menu_image.dart';
import '../widgets/text_container.dart';

class FbScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextTitle("Fundamentos Básicos"),
        backgroundColor: Colors.blue[900],
      ),
      backgroundColor: Color.fromRGBO(0, 174, 255, 1),
      body: _fbScreen(context),
    );
  }

  _fbScreen(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MenuImage(
                imagePath: "imagens/cat_fb.png",
              ),
            ],
          ),
          SizedBox(height: 15),
          Center(
            child: Padding(
              padding: EdgeInsets.all(15),
              child: MyText(
                  "Os fundamentos básicos são o ponto de partida no mundo do desenvolvimento."),
            ),
          ),
          SizedBox(height: 50),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
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
                      TextContainer("Lógica de Programação"),
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
                                      LogicScreen()),
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
                      TextContainer("POO"),
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
                                      PooScreen()),
                            );
                          }),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
