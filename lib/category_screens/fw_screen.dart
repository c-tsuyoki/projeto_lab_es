import 'package:flutter/material.dart';
import '../fw_screens/flutter_screen.dart';
import '../fw_screens/spring_screen.dart';
import '../widgets/text.dart';
import '../widgets/text_title.dart';
import '../widgets/menu_image.dart';
import '../widgets/text_container.dart';

class FwScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextTitle("Frameworks"),
        backgroundColor: Colors.blue[900],
      ),
      backgroundColor: Color.fromRGBO(0, 174, 255, 1),
      body: _fwScreen(context),
    );
  }

  _fwScreen(BuildContext context) {
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
                imagePath: "imagens/cat_fw.png",
              ),
            ],
          ),
          SizedBox(height: 15),
          Center(
            child: Padding(
              padding: EdgeInsets.all(15),
              child: MyText(
                  "Frameworks são ferramentas poderosas que auxiliam muito no desenvolvimento de aplicativos."),
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
                      TextContainer("Spring Boot"),
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
                                      SpringScreen()),
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
                      TextContainer("Flutter e Dart"),
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
                                      FlutterScreen()),
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
