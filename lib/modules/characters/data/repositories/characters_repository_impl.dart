import 'package:clean3/modules/characters/data/datasource/character_datasource.dart';
import 'package:dartz/dartz.dart';

import 'package:clean3/core/errors/failure.dart';
import 'package:clean3/modules/characters/domain/entities/character.dart';
import 'package:clean3/modules/characters/domain/repositories/characters_repository.dart';

class CharactersRepositoryImpl implements CharactersRepository {
  final CharactersDatasource datasource;

  CharactersRepositoryImpl({
    required this.datasource,
  });

  @override
  Future<Either<Failure, List<Character>>> characters() async {
    try {
      final result = await datasource.getCharacters();

      return Right(result);
    } catch (e) {
      return Left(DatasourceError());
    }
  }
}
