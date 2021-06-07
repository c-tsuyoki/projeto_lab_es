import 'package:flutter/material.dart';
import 'package:projeto_lab_es/text.dart';
import '../widgets/button.dart';
import '../main_menu.dart';
import '../widgets/text_title.dart';
import '../widgets/menu_image.dart';

class BackScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextTitle("Back-End"),
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
      body: _backScreen(context),
    );
  }

  _backScreen(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            SizedBox(height: 20),
            MenuImage(
              imagePath: "imagens/back.png",
            ),
            SizedBox(height: 60),
            Center(
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  children: [
                    MyText(
                        "Back-End pode ser definido como o conjunto de processos que roda por trás de uma aplicação."),
                    MyText(
                        "Além disso, ele constituí o meio de comunicação entre um banco de dados e uma aplicação visual, contendo todas as regras de negócio e validações.")
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
