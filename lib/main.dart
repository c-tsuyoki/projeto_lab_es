import 'package:flutter/material.dart';
import 'initial_screen.dart';
import 'package:splashscreen/splashscreen.dart';
import 'widgets/splash_logo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return _splashScreen();
  }
}

Widget _splashScreen() {
  return Stack(
    children: <Widget>[
      SplashScreen(
        seconds: 2,
        navigateAfterSeconds: InitialScreen(),
        backgroundColor: Color.fromRGBO(0, 174, 255, 1),
        loaderColor: Colors.black,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SplashLogo(
            imagePath: "imagens/splash_logo.png",
          ),
        ],
      )
    ],
  );
}
