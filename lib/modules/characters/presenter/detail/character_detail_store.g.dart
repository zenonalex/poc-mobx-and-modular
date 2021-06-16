// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_detail_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CharacterDetailStore on _CharacterDetailStoreBase, Store {
  final _$nameAtom = Atom(name: '_CharacterDetailStoreBase.name');

  @override
  String get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  final _$isValidAtom = Atom(name: '_CharacterDetailStoreBase.isValid');

  @override
  bool get isValid {
    _$isValidAtom.reportRead();
    return super.isValid;
  }

  @override
  set isValid(bool value) {
    _$isValidAtom.reportWrite(value, super.isValid, () {
      super.isValid = value;
    });
  }

  final _$stateAtom = Atom(name: '_CharacterDetailStoreBase.state');

  @override
  CharacterDetailState get state {
    _$stateAtom.reportRead();
    return super.state;
  }

  @override
  set state(CharacterDetailState value) {
    _$stateAtom.reportWrite(value, super.state, () {
      super.state = value;
    });
  }

  final _$_CharacterDetailStoreBaseActionController =
      ActionController(name: '_CharacterDetailStoreBase');

  @override
  dynamic setState(CharacterDetailState value) {
    final _$actionInfo = _$_CharacterDetailStoreBaseActionController
        .startAction(name: '_CharacterDetailStoreBase.setState');
    try {
      return super.setState(value);
    } finally {
      _$_CharacterDetailStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setName(String value) {
    final _$actionInfo = _$_CharacterDetailStoreBaseActionController
        .startAction(name: '_CharacterDetailStoreBase.setName');
    try {
      return super.setName(value);
    } finally {
      _$_CharacterDetailStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic validate(String value, String name) {
    final _$actionInfo = _$_CharacterDetailStoreBaseActionController
        .startAction(name: '_CharacterDetailStoreBase.validate');
    try {
      return super.validate(value, name);
    } finally {
      _$_CharacterDetailStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
name: ${name},
isValid: ${isValid},
state: ${state}
    ''';
  }
}
