import 'package:clean3/core/errors/failure.dart';
import 'package:clean3/modules/characters/data/datasource/character_datasource.dart';
import 'package:clean3/modules/characters/data/models/character_model.dart';
import 'package:dio/dio.dart';

class PokeDatasource implements CharactersDatasource {
  final Dio dio;
  PokeDatasource({required this.dio});

  @override
  Future<List<CharacterModel>> getCharacters() async {
    final response = await dio.get('https://pokeapi.co/api/v2/pokemon/');

    if (response.statusCode == 200) {
      final list = (response.data['results'] as List)
          .map((e) => CharacterModel.fromMap(e))
          .toList();
      return list;
    } else {
      throw DatasourceError();
    }
  }
}
