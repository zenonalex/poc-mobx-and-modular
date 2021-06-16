import 'dart:convert';

import 'package:clean3/modules/characters/domain/entities/character_detail.dart';

class CharacterDetailModel implements CharacterDetail {
  final String name;
  final String imageUrl;

  CharacterDetailModel({
    required this.name,
    required this.imageUrl,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'imageUrl': imageUrl,
    };
  }

  factory CharacterDetailModel.fromMap(Map<String, dynamic> map) {
    return CharacterDetailModel(
      name: map['name'],
      imageUrl: map['sprites']['front_default'],
    );
  }

  String toJson() => json.encode(toMap());

  factory CharacterDetailModel.fromJson(String source) => CharacterDetailModel.fromMap(json.decode(source));
}
