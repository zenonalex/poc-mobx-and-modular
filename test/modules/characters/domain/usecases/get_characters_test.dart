import 'package:clean3/core/errors/failure.dart';
import 'package:clean3/modules/characters/domain/entities/character.dart';
import 'package:clean3/modules/characters/domain/repositories/characters_repository.dart';
import 'package:clean3/modules/characters/domain/usecases/get_characters.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'get_characters_test.mocks.dart';

@GenerateMocks([CharactersRepository, Character])
main() {
  final repository = MockCharactersRepository();
  final usecase = GetCharactersImpl(repository: repository);
  final List<Character> character = [];
  final Failure error = LoadCharacterError();

  test('should return a Character list', () async {
    when(repository.characters())
        .thenAnswer((_) async => Right<Failure, List<Character>>(character));

    final result = await usecase();

    expect(result, Right(character));
  });

  test('should return a error', () async {
    when(repository.characters())
        .thenAnswer((_) async => Left<Failure, List<Character>>(error));

    final result = await usecase();

    expect(result, Left(error));
  });
}
