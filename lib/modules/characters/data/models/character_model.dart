import 'dart:convert';

import 'package:clean3/modules/characters/domain/entities/character.dart';

class CharacterModel implements Character {
  final String name;
  final String url;
  bool isFavorite;
  
  CharacterModel({
    required this.name,
    required this.url,
    this.isFavorite = false,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'url': url,
      'isFavorite': isFavorite,
    };
  }

  factory CharacterModel.fromMap(Map<String, dynamic> map) {
    return CharacterModel(
      name: map['name'],
      url: map['url'],
      isFavorite: false,
    );
  }

  String toJson() => json.encode(toMap());

  factory CharacterModel.fromJson(String source) => CharacterModel.fromMap(json.decode(source));
}
