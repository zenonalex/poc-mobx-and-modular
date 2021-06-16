import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:easy_localization/easy_localization.dart';
// import 'package:uni_links/uni_links.dart';
// import 'package:uni_links_web/uni_links_web.dart';

import 'characters_state.dart';
import 'characters_store.dart';

class CharactersPage extends StatefulWidget {
  const CharactersPage({Key? key}) : super(key: key);

  @override
  _CharactersPageState createState() => _CharactersPageState();
}

class _CharactersPageState
    extends ModularState<CharactersPage, CharacterStore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('characters.title'.tr()),
      ),
      body: Column(
        children: <Widget>[
          ElevatedButton(
            onPressed: () {
              controller.loadCharacters();
            },
            child: Text('characters.loadButton'.tr()),
          ),
          Expanded(
            child: Observer(builder: (_) {
              var state = controller.state;
              if (state is StartState) {
                return Center(
                  child: Text('characters.homeMessage'.tr()),
                );
              } else if (state is LoadingState) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state is SucessState) {
                return ListView.builder(
                    itemCount: state.list.length,
                    itemBuilder: (_, index) {
                      return ListTile(
                        onTap: () {
                          Modular.to.pushNamed('/detail',
                              arguments: state.list[index].url);
                        },
                        leading: GestureDetector(
                          onTap: () {
                            controller.toggleIsFavorite();
                            setState(() {
                              state.list[index].isFavorite =
                                  controller.isFavorite;
                            });
                          },
                          child: state.list[index].isFavorite
                              ? Icon(Icons.favorite)
                              : Icon(Icons.favorite_border_outlined),
                        ),
                        title: Text(state.list[index].name),
                      );
                    });
              } else {
                return Container();
              }
            }),
          )
        ],
      ),
    );
  }
}
