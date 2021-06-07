import 'package:flutter/material.dart';
import 'package:projeto_lab_es/text.dart';
import '../widgets/button.dart';
import '../widgets/text_title.dart';
import '../main_menu.dart';
import '../widgets/menu_image.dart';

class PooScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextTitle("POO"),
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
      body: _pooScreen(context),
    );
  }

  _pooScreen(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            SizedBox(height: 20),
            MenuImage(
              imagePath: "imagens/poo.png",
            ),
            SizedBox(height: 20),
            Center(
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  children: [
                    MyText(
                        "A POO(Programação Orientada a Objetos) diz respeito a um padrão de programação muito famoso pelo reaproveitamento de código e pela segurança."),
                    MyText(
                        "Este padrão utiliza o conceito de representação de objetos da vida real para compor seus algoritmos e possuí 4 pilares fundamentais: Abstração, Encapsulamento, Herança e Polimorfismo.")
                  ],
                ),
              ),
            ),
            SizedBox(height: 60),
            ButtonContainer(
                'https://www.devmedia.com.br/os-4-pilares-da-programacao-orientada-a-objetos/9264'),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
