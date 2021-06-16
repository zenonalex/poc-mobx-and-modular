import 'package:clean3/core/errors/failure.dart';
import 'package:clean3/modules/characters/external/datasource/poke_datasource.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'poke_datasource_test.mocks.dart';

@GenerateMocks([Dio])
main() {
  final dio = MockDio();
  final datasource = PokeDatasource(dio: dio);
  final requestOptions = RequestOptions(path: '');
  final Map<String, dynamic> data = {"name":'test','url':'test'};

  test('should return a CharacterModel list', () async {
    when(dio.get(any)).thenAnswer((_) async => Response(
        statusCode: 200,
        data: {
          'results': [data]
        },
        requestOptions: requestOptions));

    final future = datasource.getCharacters();

    expect(future, completes);
  });

  test('should return a DatasourceError', () async {
    when(dio.get(any)).thenAnswer((_) async =>
        Response(statusCode: 401, data: null, requestOptions: requestOptions));

    final future = datasource.getCharacters();

    expect(future, throwsA(isA<DatasourceError>()));
  });

  test('should return a Exception when Dio fail', () async {
    when(dio.get(any)).thenThrow(Exception());

    final future = datasource.getCharacters();

    expect(future, throwsA(isA<Exception>()));
  });
}
