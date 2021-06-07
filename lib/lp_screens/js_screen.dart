import 'package:flutter/material.dart';
import 'package:projeto_lab_es/text.dart';
import '../widgets/button.dart';
import '../widgets/text_title.dart';
import '../main_menu.dart';
import '../widgets/menu_image.dart';

class JsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextTitle("JavaScript e TypeScript"),
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
      body: _jsScreen(context),
    );
  }

  _jsScreen(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            SizedBox(height: 20),
            MenuImage(
              imagePath: "imagens/java_script.png",
            ),
            SizedBox(height: 20),
            Center(
              child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    children: [
                      MyText(
                          "JavaScript é uma linguagem criada em 1995 que originalmente, foi projetada para rodar no Netscape Navigator, ela tinha o propósito de tornar as páginas web mais dinâmicas."),
                      MyText(
                          "Com o passar do tempo, a linguagem evoluiu e atualmente, está presente no desenvolvimento de jogos, aplicativos móveis e sistemas web."),
                      MyText(" "),
                      MyText(
                          "Tecnologias que utilizam o JavaScript: jQuery, Node.js, React."),
                    ],
                  )),
            ),
            SizedBox(height: 35),
            ButtonContainer(
                'https://canaltech.com.br/internet/O-que-e-e-como-funciona-a-linguagem-JavaScript/'),
            SizedBox(height: 20),
            MenuImage(
              imagePath: "imagens/type_script.png",
            ),
            SizedBox(height: 20),
            Center(
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  children: [
                    MyText(
                        "O TypeScript é um superconjunto de JavaScript desenvolvido pela Microsoft, este conjunto possuí tipagem forte e adiciona outros recursos ao JavaScript, tornando a linguagem ainda mais poderosa."),
                  ],
                ),
              ),
            ),
            SizedBox(height: 35),
            ButtonContainer(
                'https://blog.betrybe.com/desenvolvimento-web/typescript/'),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
