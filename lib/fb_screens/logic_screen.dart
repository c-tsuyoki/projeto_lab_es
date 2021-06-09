import 'package:flutter/material.dart';
import '../main_menu.dart';
import '../widgets/text.dart';
import '../widgets/button.dart';
import '../widgets/text_title.dart';
import '../widgets/menu_image.dart';

class LogicScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextTitle("Lógica de Programação"),
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
      body: _logicScreen(context),
    );
  }

  _logicScreen(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 20),
          MenuImage(
            imagePath: "imagens/logica.png",
          ),
          SizedBox(height: 60),
          Center(
            child: Padding(
              padding: EdgeInsets.all(15),
              child: MyText(
                  "A lógica de programação é a base de toda linguagem e, diz respeito a organização sequencial de instruções aplicadas à resolução de problemas através do desenvolvimento de aplicativos."),
            ),
          ),
          SizedBox(height: 65),
          ButtonContainer(
              'https://becode.com.br/melhor-forma-de-aprender-logica-de-programacao/'),
        ],
      ),
    );
  }
}
