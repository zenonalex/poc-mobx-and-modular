import 'package:clean3/modules/characters/domain/usecases/get_character_details.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import './character_detail_state.dart';

part 'character_detail_store.g.dart';

@Injectable()
class CharacterDetailStore = _CharacterDetailStoreBase
    with _$CharacterDetailStore;

abstract class _CharacterDetailStoreBase with Store {
  final GetCharacterDetail getCharacterDetail;

  _CharacterDetailStoreBase({
    required this.getCharacterDetail,
  });

  Future<CharacterDetailState> loadCharacterDetail(String url) async {
    setState(LoadingState());
    var result = await getCharacterDetail(url);
    return result.fold((l) => ErrorState(), (r) => state = SucessState(r));
  }

  @observable
  String name = '';

  @observable
  bool isValid = false;

  @observable
  CharacterDetailState state = LoadingState();

  @action
  setState(CharacterDetailState value) => state = value;

  @action
  setName(String value) => name = value;

  @action
  validate(String value, String name) {
    if (value == name) {
      return isValid = true;
    }
    return isValid = false;
  }
}
