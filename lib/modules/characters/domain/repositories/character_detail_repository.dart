import 'package:clean3/core/errors/failure.dart';
import 'package:clean3/modules/characters/domain/entities/character_detail.dart';
import 'package:dartz/dartz.dart';

abstract class CharacterDetailRepository {
  Future<Either<Failure, CharacterDetail>> characterDetail(String url);
}