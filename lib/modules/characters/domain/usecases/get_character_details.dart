import 'package:clean3/modules/characters/domain/entities/character_detail.dart';
import 'package:clean3/modules/characters/domain/repositories/character_detail_repository.dart';
import 'package:dartz/dartz.dart';

import 'package:clean3/core/errors/failure.dart';

abstract class GetCharacterDetail {
  Future<Either<Failure, CharacterDetail>> call(String url);
}

class GetCharacterDetailImpl implements GetCharacterDetail {
  CharacterDetailRepository repository;

  GetCharacterDetailImpl({required this.repository});

  @override
  Future<Either<Failure, CharacterDetail>> call(String url) async{
    return repository.characterDetail(url);
  }
  
}
