import 'package:flutter/material.dart';
import 'package:projeto_lab_es/fs_screens/uml_screen.dart';
import 'package:projeto_lab_es/fs_screens/git_screen.dart';
import 'package:projeto_lab_es/text.dart';
import '../widgets/menu_image.dart';
import '../widgets/text_container.dart';

class FsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ferramentas e Sites"),
        backgroundColor: Colors.blue[900],
      ),
      backgroundColor: Color.fromRGBO(0, 174, 255, 1),
      body: _fbScreen(context),
    );
  }

  _fbScreen(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 20),
          MenuImage(
            imagePath: "imagens/cat_fs.png",
          ),
          SizedBox(height: 90),
          MyText(
              "Existem ferramentas e sites que auxiliam na organização de código e ou na modelagem de sistemas"),
          SizedBox(height: 85),
          Container(
            height: 60,
            width: 380,
            margin: const EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.blue[900]),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                children: [
                  Spacer(),
                  TextContainer("Git e GitHub"),
                  Spacer(),
                  IconButton(
                      icon: Icon(
                        Icons.arrow_forward_outlined,
                        color: Colors.white,
                        size: 30,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => GitScreen()),
                        );
                      }),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            height: 60,
            width: 380,
            margin: const EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.blue[900]),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                children: [
                  Spacer(),
                  TextContainer("UML"),
                  Spacer(),
                  IconButton(
                      icon: Icon(
                        Icons.arrow_forward_outlined,
                        color: Colors.white,
                        size: 30,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => UmlScreen()),
                        );
                      }),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
