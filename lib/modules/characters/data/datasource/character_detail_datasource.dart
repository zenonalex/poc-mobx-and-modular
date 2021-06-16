import 'package:clean3/modules/characters/data/models/character_detail_model.dart';

abstract class CharacterDetailDatasource {
  Future<CharacterDetailModel> getCharacterDetail(String url);
}