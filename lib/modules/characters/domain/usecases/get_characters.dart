import 'package:dartz/dartz.dart';

import 'package:clean3/core/errors/failure.dart';
import 'package:clean3/modules/characters/domain/entities/character.dart';
import 'package:clean3/modules/characters/domain/repositories/characters_repository.dart';

abstract class GetCharacters {
  Future<Either<Failure, List<Character>>> call();
}

class GetCharactersImpl implements GetCharacters {
  CharactersRepository repository;

  GetCharactersImpl({required this.repository});

  @override
  Future<Either<Failure, List<Character>>> call() async {
    return repository.characters();
  }
}
