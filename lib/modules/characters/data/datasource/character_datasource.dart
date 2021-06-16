import 'package:clean3/modules/characters/data/models/character_model.dart';

abstract class CharactersDatasource {
  Future<List<CharacterModel>> getCharacters();
}
