import 'package:flutter/material.dart';
import 'package:projeto_lab_es/text.dart';
import 'package:projeto_lab_es/widgets/button.dart';
import '../widgets/text_title.dart';
import '../main_menu.dart';
import '../widgets/menu_image.dart';

class SpringScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextTitle("Spring Boot"),
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
      body: _springScreen(context),
    );
  }

  _springScreen(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            SizedBox(height: 20),
            MenuImage(
              imagePath: "imagens/spring.png",
            ),
            SizedBox(height: 20),
            Center(
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  children: [
                    MyText(
                        "Spring Boot é uma ferramenta de desenvolvimento back-end que utiliza a linguagem Java, através da utilização de bibliotecas e de um gerenciador de dependências, possibilita a configuração, criação e desenvolvimento de aplicações web."),
                    MyText(
                        "Esta ferramenta tem como objetivo aumentar a produtividade, não sendo necessário gastar muito tempo na preparação do projeto, possibilitando maior foco na codificação das regras de negócio."),
                    MyText(
                        "O Spring Boot faz parte de um ecossistema completo de ferramentas que auxiliam em diversas soluções."),
                  ],
                ),
              ),
            ),
            SizedBox(height: 65),
            ButtonContainer('https://spring.io/projects/spring-boot'),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
