import 'package:clean3/modules/characters/data/datasource/character_detail_datasource.dart';
import 'package:clean3/modules/characters/domain/entities/character_detail.dart';
import 'package:clean3/modules/characters/domain/repositories/character_detail_repository.dart';
import 'package:dartz/dartz.dart';

import 'package:clean3/core/errors/failure.dart';

class CharacterDetailRepositoryImpl implements CharacterDetailRepository {
  final CharacterDetailDatasource datasource;

  CharacterDetailRepositoryImpl({
    required this.datasource,
  });

  @override
  Future<Either<Failure, CharacterDetail>> characterDetail(String url) async{
    try {
      final result = await datasource.getCharacterDetail(url);

      return Right(result);
    } catch (e) {
      return Left(DatasourceError());
    }
  }

 
}