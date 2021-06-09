import 'package:flutter/material.dart';
import '../cg_screens/back_screen.dart';
import '../cg_screens/front_screen.dart';
import '../widgets/text.dart';
import '../widgets/text_title.dart';
import '../widgets/menu_image.dart';
import '../widgets/text_container.dart';

class CgScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextTitle("Conceitos Gerais"),
        backgroundColor: Colors.blue[900],
      ),
      backgroundColor: Color.fromRGBO(0, 174, 255, 1),
      body: _cgScreen(context),
    );
  }

  _cgScreen(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MenuImage(
                imagePath: "imagens/cat_cg.png",
              ),
            ],
          ),
          SizedBox(height: 15),
          Center(
            child: Padding(
              padding: EdgeInsets.all(15),
              child: MyText(
                  "É fundamental entender alguns conceitos para melhorar e avançar na carreira."),
            ),
          ),
          SizedBox(height: 50),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
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
                      TextContainer("Back-End"),
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
                                  builder: (BuildContext context) =>
                                      BackScreen()),
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
                      TextContainer("Front-End"),
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
                                  builder: (BuildContext context) =>
                                      FrontScreen()),
                            );
                          }),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
