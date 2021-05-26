import 'package:flutter/material.dart';
import 'widgets/home_logo.dart';
import 'main_menu.dart';
import 'text.dart';

import 'widgets/text_container.dart';

class InitialScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 174, 255, 1),
      body: _initialScreen(context),
    );
  }

  _initialScreen(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(2, 30, 2, 0),
            child: Row(
              children: [
                HomeLogo(
                  imagePath: "imagens/teste.png",
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: <Widget>[
                SizedBox(height: 200),
                MyText("Bem vindo ao Estuda Dev"),
                MyText(
                    "Estude as ferramentas e os conceitos para ser um desenvolvedor"),
                SizedBox(height: 250),
              ],
            ),
          ),
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
                  TextContainer("Começar"),
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
                              builder: (BuildContext context) => MainMenu()),
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
