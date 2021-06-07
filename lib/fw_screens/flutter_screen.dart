import 'package:flutter/material.dart';
import 'package:projeto_lab_es/text.dart';
import '../widgets/button.dart';
import '../main_menu.dart';
import '../widgets/text_title.dart';
import '../widgets/menu_image.dart';

class FlutterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextTitle("Flutter e Dart"),
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
      body: _flutterScreen(context),
    );
  }

  _flutterScreen(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            SizedBox(height: 20),
            MenuImage(
              imagePath: "imagens/flutter.png",
            ),
            SizedBox(height: 20),
            Center(
              child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    children: [
                      MyText(
                          "Flutter é um kit de desenvolvimento de aplicativos que utiliza a linguagem Dart, de código aberto, o Flutter foi criado pela Google, e possibilita a criação de aplicativos compilados nativamente. Atualmente pode compilar para Android, iOS, Windows, Mac, Linux, Google Fuchsia e Web."),
                      MyText(" "),
                      MyText(
                          "Empresas que utilizam o Flutter: NuBank, grupo Alibaba."),
                    ],
                  )),
            ),
            SizedBox(height: 35),
            ButtonContainer('https://flutter.dev/'),
            SizedBox(height: 20),
            MenuImage(
              imagePath: "imagens/dart.png",
            ),
            SizedBox(height: 20),
            Center(
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  children: [
                    MyText(
                        "O Dart é uma linguagem de programação fortemente tipada criada pela Google em 2011. A missão inicial do Dart era substituir o JavaScript, porém, ela evoluiu e hoje é uma linguagem orientada a objetos, podendo também, ser considerada multi-paradigma."),
                  ],
                ),
              ),
            ),
            SizedBox(height: 35),
            ButtonContainer('https://dart.dev/'),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
