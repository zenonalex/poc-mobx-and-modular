import 'package:clean3/app_module.dart';
import 'package:clean3/modules/characters/domain/entities/character.dart';
import 'package:clean3/modules/characters/domain/usecases/get_characters.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart' as modular;
import 'package:flutter_modular_test/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'app_module_test.mocks.dart';

@GenerateMocks([Dio])
main() {
  final dio = MockDio();
  final requestOptions = RequestOptions(path: '');
  final Map<String, dynamic> data = {"name": 'test', 'url': 'test'};

  initModule(AppModule(), replaceBinds: [
    modular.Bind.instance<Dio>(dio),
  ]);

  test('should recover usecase whitout error', () {
    final usecase = modular.Modular.get<GetCharacters>();
    expect(usecase, isA<GetCharactersImpl>());
  });

  test('should recover a Character list', () async {
    when(dio.get(any))
        .thenAnswer((_) async => Response(data: data,statusCode: 200,requestOptions: requestOptions));

    final usecase = modular.Modular.get<GetCharacters>();
    final result = await usecase();

    expect(result.fold(id, id), isA<List<Character>>());
  });
}
