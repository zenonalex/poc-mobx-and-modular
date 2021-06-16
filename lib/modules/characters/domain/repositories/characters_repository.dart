import 'package:clean3/core/errors/failure.dart';
import 'package:clean3/modules/characters/domain/entities/character.dart';
import 'package:dartz/dartz.dart';

abstract class CharactersRepository {
  Future<Either<Failure, List<Character>>> characters();
}
