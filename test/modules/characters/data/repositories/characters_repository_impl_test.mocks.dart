// Mocks generated by Mockito 5.0.10 from annotations
// in clean3/test/modules/characters/data/repositories/characters_repository_impl_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i3;

import 'package:clean3/modules/characters/data/datasource/character_datasource.dart'
    as _i2;
import 'package:clean3/modules/characters/data/models/character_model.dart'
    as _i4;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: comment_references
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis

/// A class which mocks [CharactersDatasource].
///
/// See the documentation for Mockito's code generation for more information.
class MockCharactersDatasource extends _i1.Mock
    implements _i2.CharactersDatasource {
  MockCharactersDatasource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Future<List<_i4.CharacterModel>> getCharacters() => (super.noSuchMethod(
          Invocation.method(#getCharacters, []),
          returnValue:
              Future<List<_i4.CharacterModel>>.value(<_i4.CharacterModel>[]))
      as _i3.Future<List<_i4.CharacterModel>>);
}

/// A class which mocks [CharacterModel].
///
/// See the documentation for Mockito's code generation for more information.
class MockCharacterModel extends _i1.Mock implements _i4.CharacterModel {
  MockCharacterModel() {
    _i1.throwOnMissingStub(this);
  }

  @override
  String get name =>
      (super.noSuchMethod(Invocation.getter(#name), returnValue: '') as String);
  @override
  String get url =>
      (super.noSuchMethod(Invocation.getter(#url), returnValue: '') as String);
  @override
  bool get isFavorite =>
      (super.noSuchMethod(Invocation.getter(#isFavorite), returnValue: false)
          as bool);
  @override
  set isFavorite(bool? _isFavorite) =>
      super.noSuchMethod(Invocation.setter(#isFavorite, _isFavorite),
          returnValueForMissingStub: null);
  @override
  Map<String, dynamic> toMap() =>
      (super.noSuchMethod(Invocation.method(#toMap, []),
          returnValue: <String, dynamic>{}) as Map<String, dynamic>);
  @override
  String toJson() =>
      (super.noSuchMethod(Invocation.method(#toJson, []), returnValue: '')
          as String);
}
