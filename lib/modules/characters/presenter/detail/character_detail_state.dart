import 'package:clean3/modules/characters/domain/entities/character_detail.dart';

abstract class CharacterDetailState {}

class StartState implements CharacterDetailState {
  const StartState();
}

class LoadingState implements CharacterDetailState {
  const LoadingState();
}

class ErrorState implements CharacterDetailState {
  const ErrorState();
}

class ValidName implements CharacterDetailState {
  const ValidName();
}

class SucessState implements CharacterDetailState {
  final CharacterDetail list;
  const SucessState(this.list);
}
