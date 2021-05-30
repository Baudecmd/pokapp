import 'package:flutter/material.dart';

import 'database/pokemon_service.dart';
import 'entity/pokemon.dart';

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
        body: Column(children: [
          Text("Page accueil de Pokapp"),
          ElevatedButton(
            onPressed: () => test(),
            child: new Text('Click me'),
          ),
        ]));
  }

  test() async {
    PokemonService pokemonService = new PokemonService();
    Pokemon poke = await pokemonService.getPokemon(2);
    print(poke.name);
  }
}
