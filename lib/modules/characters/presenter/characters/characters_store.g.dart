// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'characters_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CharacterStore on _CharacterStoreBase, Store {
  final _$isFavoriteAtom = Atom(name: '_CharacterStoreBase.isFavorite');

  @override
  bool get isFavorite {
    _$isFavoriteAtom.reportRead();
    return super.isFavorite;
  }

  @override
  set isFavorite(bool value) {
    _$isFavoriteAtom.reportWrite(value, super.isFavorite, () {
      super.isFavorite = value;
    });
  }

  final _$stateAtom = Atom(name: '_CharacterStoreBase.state');

  @override
  CharactersState get state {
    _$stateAtom.reportRead();
    return super.state;
  }

  @override
  set state(CharactersState value) {
    _$stateAtom.reportWrite(value, super.state, () {
      super.state = value;
    });
  }

  final _$_CharacterStoreBaseActionController =
      ActionController(name: '_CharacterStoreBase');

  @override
  dynamic setState(CharactersState value) {
    final _$actionInfo = _$_CharacterStoreBaseActionController.startAction(
        name: '_CharacterStoreBase.setState');
    try {
      return super.setState(value);
    } finally {
      _$_CharacterStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic toggleIsFavorite() {
    final _$actionInfo = _$_CharacterStoreBaseActionController.startAction(
        name: '_CharacterStoreBase.toggleIsFavorite');
    try {
      return super.toggleIsFavorite();
    } finally {
      _$_CharacterStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isFavorite: ${isFavorite},
state: ${state}
    ''';
  }
}
