import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:easy_localization/easy_localization.dart';

import 'package:clean3/modules/characters/presenter/detail/character_detail_state.dart';
import 'package:clean3/modules/characters/presenter/detail/character_detail_store.dart';
import 'package:mobx/mobx.dart';

class CharacterDetailPage extends StatefulWidget {
  final String imageUrl;
  const CharacterDetailPage({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  @override
  _CharacterDetailPageState createState() => _CharacterDetailPageState();
}

class _CharacterDetailPageState
    extends ModularState<CharacterDetailPage, CharacterDetailStore> {
  late TextEditingController textName = TextEditingController();

  @override
  void initState() {
    reaction<String>((r) => controller.setName(textName.text), (setName) async {
      if (controller.name.length == 4) {
        print(controller.name);

        return await Flushbar(
          title: 'Opa!!!',
        ).show(context);
      }
    });

    controller.loadCharacterDetail(widget.imageUrl);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('detail.title'.tr()),
      ),
      body: Observer(builder: (_) {
        var state = controller.state;
        if (state is LoadingState) {
          return Center(child: CircularProgressIndicator());
        } else if (state is SucessState) {
          return Center(
            child: Column(
              children: [
                Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(state.list.imageUrl),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('detail.name'.tr()),
                    Text(state.list.name),
                  ],
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextField(
                    controller: textName,
                    onChanged: (_) {
                      controller.setName(textName.text);
                      controller.validate(textName.text, state.list.name);
                    },
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 3,
                            color:
                                controller.isValid ? Colors.green : Colors.blue,
                          ),
                        ),
                        border: OutlineInputBorder(),
                        hintText: 'detail.hint'.tr()),
                  ),
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('detail.subTitle'.tr()),
                    Text(controller.name),
                  ],
                ),
                Spacer(),
              ],
            ),
          );
        }
        return Container();
      }),
    );
  }
}
