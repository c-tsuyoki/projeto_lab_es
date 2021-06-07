import 'package:flutter/material.dart';
import 'package:projeto_lab_es/category_screens/fs_screen.dart';
import 'package:projeto_lab_es/category_screens/fw_screen.dart';
import 'category_screens/cg_screen.dart';
import 'category_screens/fb_screen.dart';
import 'category_screens/lp_screen.dart';
import 'widgets/menu_image.dart';
import 'widgets/text_container.dart';

class MainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Categorias"),
          backgroundColor: Colors.blue[900],
        ),
        backgroundColor: Color.fromRGBO(0, 174, 255, 1),
        body: _mainMenu(context));
  }

  _mainMenu(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          child: Column(
        children: [
          SizedBox(height: 20),
          MenuImage(
            imagePath: "imagens/cat_fb.png",
          ),
          SizedBox(height: 7),
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
                  TextContainer("Fundamentos Básicos"),
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
                              builder: (BuildContext context) => FbScreen()),
                        );
                      }),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          MenuImage(
            imagePath: "imagens/cat_lp.png",
          ),
          SizedBox(height: 7),
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
                  TextContainer("Linguagens de Programação"),
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
                              builder: (BuildContext context) => LpScreen()),
                        );
                      }),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          MenuImage(
            imagePath: "imagens/cat_cg.png",
          ),
          SizedBox(height: 7),
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
                  TextContainer("Conceitos Gerais"),
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
                              builder: (BuildContext context) => CgScreen()),
                        );
                      }),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          MenuImage(
            imagePath: "imagens/cat_fw.png",
          ),
          SizedBox(height: 7),
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
                  TextContainer("Frameworks"),
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
                              builder: (BuildContext context) => FwScreen()),
                        );
                      }),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          MenuImage(
            imagePath: "imagens/cat_fs.png",
          ),
          SizedBox(height: 7),
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
                  TextContainer("Ferramentas e Sites"),
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
                              builder: (BuildContext context) => FsScreen()),
                        );
                      }),
                ],
              ),
            ),
          ),
          SizedBox(height: 15),
        ],
      )),
    );
  }
}
