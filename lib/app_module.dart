import 'package:clean3/modules/characters/data/repositories/character_detail_repository_impl.dart';
import 'package:clean3/modules/characters/data/repositories/characters_repository_impl.dart';
import 'package:clean3/modules/characters/domain/usecases/get_character_details.dart';
import 'package:clean3/modules/characters/domain/usecases/get_characters.dart';
import 'package:clean3/modules/characters/external/datasource/poke_datasource.dart';
import 'package:clean3/modules/characters/external/datasource/poke_detail_datasource.dart';
import 'package:clean3/modules/characters/presenter/characters/characters_page.dart';
import 'package:clean3/modules/characters/presenter/characters/characters_store.dart';
import 'package:clean3/modules/characters/presenter/detail/character_detail_page.dart';
import 'package:clean3/modules/characters/presenter/detail/character_detail_store.dart';
import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind((i) => CharactersRepositoryImpl(datasource: i())),
    Bind((i) => GetCharactersImpl(repository: i())),
    Bind((i) => PokeDatasource(dio: i())),
    Bind((i) => Dio()),
    Bind((i) => CharacterStore(getCharacters: i())),
    Bind((i) => CharacterDetailRepositoryImpl(datasource: i())),
    Bind((i) => GetCharacterDetailImpl(repository: i())),
    Bind((i) => PokeDetailDatasource(dio: i())),
    Bind((i) => CharacterDetailStore(getCharacterDetail: i())),
  ];

  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, arg) => CharactersPage()),
    ChildRoute('/detail',
        child: (_, args) => CharacterDetailPage(imageUrl: args.data),
        transition: TransitionType.fadeIn),
  ];
  
}
