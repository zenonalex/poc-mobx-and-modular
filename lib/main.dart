import 'package:clean3/app_module.dart';
import 'package:clean3/app_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
        supportedLocales: [Locale('en', 'US'), Locale('pt', 'BR')],
        path: 'lib/modules/characters/assets/translations',
        fallbackLocale: Locale('en', 'US'),
        child: ModularApp(module: AppModule(), child: AppWidget())),
  );
}
