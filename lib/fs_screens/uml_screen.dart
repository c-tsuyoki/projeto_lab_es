import 'package:flutter/material.dart';
import '../widgets/text.dart';
import '../widgets/button.dart';
import '../widgets/text_title.dart';
import '../main_menu.dart';
import '../widgets/menu_image.dart';

class UmlScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextTitle("UML"),
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
      body: _umlScreen(context),
    );
  }

  _umlScreen(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            SizedBox(height: 20),
            MenuImage(
              imagePath: "imagens/uml.png",
            ),
            SizedBox(height: 20),
            Center(
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  children: [
                    MyText(
                        "UML é um acrônimo para “Unified Modeling Language” ou “Linguagem de Modelagem Unificada”."),
                    MyText(
                        "A UML é muito utilizada no desenvolvimento de softwares, possuí características do padrão orientado a objetos e tem como finalidade, construir, especificar, visualizar e documentar um software."),
                    MyText(
                        "Através de diversos tipos específicos de diagramas, a UML fornece um “desenho” conceitual do sistema a ser desenvolvido."),
                    MyText(" "),
                    MyText("Diagrama de um sistema de pedidos e entregas:"),
                    Image.asset(
                      "imagens/diagrama.png",
                      filterQuality: FilterQuality.high,
                      fit: BoxFit.none,
                      scale: 1.7,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 60),
            ButtonContainer('https://pt.wikipedia.org/wiki/UML'),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
