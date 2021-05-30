import 'dart:convert';

class Pokemon {
  int id;
  int variant;
  String name;

  Pokemon({
    required this.id,
    required this.variant,
    required this.name,
  });

  factory Pokemon.fromMap(Map<String, dynamic> json) => new Pokemon(
        id: json["NUMBER"],
        variant: json["CODE"],
        name: json["NAME"],
      );

  Map<String, dynamic> toMap() => {
        "NUMBER": id,
        "CODE": variant,
        "NAME": name,
      };

  static Pokemon pokemonFromJson(String str) {
    final jsonData = json.decode(str);
    return Pokemon.fromMap(jsonData);
  }

  static String pokemonToJson(Pokemon data) {
    final dyn = data.toMap();
    return json.encode(dyn);
  }
}
