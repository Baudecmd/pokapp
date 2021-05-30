import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return new _homePage();
  }
}

class _homePage extends State<HomePage> {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Page accueil"),
          backgroundColor: Colors.red,
        ),
        body: Row(children: [Text("Page accueil de Pokapp")]));
  }
}
