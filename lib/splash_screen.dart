import 'package:flutter/material.dart';
import 'package:pokapp/home_page.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreenPage> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreenView(
      navigateRoute: HomePage(),
      duration: 3000,
      imageSize: 130,
      imageSrc: "assets/images/logo.png",
      backgroundColor: Colors.white,
    );
  }
}
