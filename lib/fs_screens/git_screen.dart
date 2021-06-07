import 'package:flutter/material.dart';
import 'package:projeto_lab_es/text.dart';
import '../widgets/button.dart';
import '../widgets/text_title.dart';
import '../main_menu.dart';
import '../widgets/menu_image.dart';

class GitScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextTitle("Git e GitHub"),
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
      body: _gitScreen(context),
    );
  }

  _gitScreen(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            SizedBox(height: 20),
            MenuImage(
              imagePath: "imagens/git.png",
            ),
            SizedBox(height: 20),
            Center(
              child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    children: [
                      MyText(
                          "Git é um sistema de controle de versão de arquivos muito utilizado no desenvolvimento de softwares."),
                      MyText(
                          "Ele é capaz de manter um histórico de alterações, possibilitando rápidas manutenções em caso de problemas com arquivos de código fonte por exemplo."),
                    ],
                  )),
            ),
            SizedBox(height: 35),
            ButtonContainer(
                'https://www.treinaweb.com.br/blog/git-e-github-quais-as-diferencas'),
            SizedBox(height: 20),
            MenuImage(
              imagePath: "imagens/github.png",
            ),
            SizedBox(height: 20),
            Center(
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  children: [
                    MyText(
                        "O GitHub é uma plataforma de hospedagem de código-fonte e arquivos com controle de versão usando o Git. Ele permite que programadores, empresas ou qualquer usuário cadastrado na plataforma contribuam em projetos, privados e/ou Open Source, de qualquer lugar do mundo."),
                  ],
                ),
              ),
            ),
            SizedBox(height: 35),
            ButtonContainer('https://github.com/'),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
