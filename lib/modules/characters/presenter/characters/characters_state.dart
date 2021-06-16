import 'package:clean3/modules/characters/domain/entities/character.dart';

abstract class CharactersState {}

class StartState implements CharactersState {
  const StartState();
}

class LoadingState implements CharactersState {
  const LoadingState();
}

class ErrorState implements CharactersState {
  const ErrorState();
}

class SucessState implements CharactersState {
  final List<Character> list;
  const SucessState(this.list);
}
