import 'package:pokapp/entity/pokemon.dart';
import 'package:sqflite/sqflite.dart';

import 'database_handler.dart';

class PokemonService {
  late DatabaseHandler handler;

  PokemonService() {
    this.handler = new DatabaseHandler();
  }

  Future<Pokemon> getPokemon(int id) async {
    final Database db = await handler.initializeDB();
    var result =
        await db.query("pokemon", where: 'number = ?', whereArgs: [id]);
    return Pokemon.fromMap(result.first);
  }
}
