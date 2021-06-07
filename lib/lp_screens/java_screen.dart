import 'package:flutter/material.dart';
import 'package:projeto_lab_es/text.dart';
import '../widgets/text_title.dart';
import '../widgets/button.dart';
import '../main_menu.dart';
import '../widgets/menu_image.dart';

class JavaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextTitle("Java"),
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
      body: _fbScreen(context),
    );
  }

  _fbScreen(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            SizedBox(height: 20),
            MenuImage(
              imagePath: "imagens/java.png",
            ),
            SizedBox(height: 40),
            Center(
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  children: [
                    MyText(
                        "Java é uma linguagem de programação orientada a objetos desenvolvida na década de 90 por uma equipe de programadores chefiada por James Gosling, na empresa Sun Microsystems."),
                    MyText(
                        " Apesar de ser uma linguagem antiga, o Java ainda se mostra bem presente nos dias de hoje, sendo geralmente utilizado para aplicações web e em aplicações do lado do servidor."),
                  ],
                ),
              ),
            ),
            SizedBox(height: 60),
            ButtonContainer('https://www.java.com/pt-BR/about/'),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
