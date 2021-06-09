import 'package:flutter/material.dart';
import '../widgets/text.dart';
import '../widgets/button.dart';
import '../main_menu.dart';
import '../widgets/text_title.dart';
import '../widgets/menu_image.dart';

class FrontScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextTitle("Front-End"),
        backgroundColor: Colors.blue[900],
        actions: [
          IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => MainMenu()),
                );
              }),
        ],
      ),
      backgroundColor: Color.fromRGBO(0, 174, 255, 1),
      body: _frontScreen(context),
    );
  }

  _frontScreen(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            SizedBox(height: 20),
            MenuImage(
              imagePath: "imagens/front.png",
            ),
            SizedBox(height: 20),
            Center(
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  children: [
                    MyText(
                        "O Front-end é a parte visual de um aplicativo, é responsável por converter dados provenientes de uma aplicação do lado do servidor(back-end), em uma interface gráfica, de forma que os usuários possam visualizar esses dados e interagir com eles."),
                    MyText(" "),
                    MyText(
                        "Tecnologias para desenvolvimento front-end: React, Angular, HTML, CSS, JavaScript."),
                  ],
                ),
              ),
            ),
            SizedBox(height: 65),
            ButtonContainer(
                'https://www.alura.com.br/artigos/o-que-e-front-end-e-back-end'),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
