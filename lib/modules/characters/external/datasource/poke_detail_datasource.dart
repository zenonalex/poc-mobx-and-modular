import 'package:clean3/core/errors/failure.dart';
import 'package:clean3/modules/characters/data/datasource/character_detail_datasource.dart';
import 'package:clean3/modules/characters/data/models/character_detail_model.dart';
import 'package:dio/dio.dart';

class PokeDetailDatasource implements CharacterDetailDatasource {
  final Dio dio;
  PokeDetailDatasource({required this.dio});

  @override
  Future<CharacterDetailModel> getCharacterDetail(String url) async {
    final response = await dio.get(url);

    if (response.statusCode == 200) {
      final list = CharacterDetailModel.fromMap(response.data);

      return list;
    } else {
      throw DatasourceError();
    }
  }
}
