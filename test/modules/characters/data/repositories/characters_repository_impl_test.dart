import 'package:clean3/core/errors/failure.dart';
import 'package:clean3/modules/characters/data/datasource/character_datasource.dart';
import 'package:clean3/modules/characters/data/models/character_model.dart';
import 'package:clean3/modules/characters/data/repositories/characters_repository_impl.dart';
import 'package:clean3/modules/characters/domain/entities/character.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'characters_repository_impl_test.mocks.dart';

@GenerateMocks([CharactersDatasource, CharacterModel])
main() {
  final datasource = MockCharactersDatasource();
  final repository = CharactersRepositoryImpl(datasource: datasource);

  test('should return a Character list', () async {
    when(datasource.getCharacters())
        .thenAnswer((_) async => <CharacterModel>[]);

    final result = await repository.characters();

    expect(result.fold(id, id), isA<List<Character>>());
  });


  test('should return a Failure', () async {
    when(datasource.getCharacters())
        .thenThrow(Exception());

    final result = await repository.characters();

    expect(result.fold(id, id), isA<DatasourceError>());
  });
}
