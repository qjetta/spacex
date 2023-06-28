import 'dart:convert';
import 'dart:io';
import 'package:easy_localization/src/translations.dart';

import 'package:easy_localization/src/localization.dart';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

initTestEnv({required bool integration}) async {
  Logger.level = Level.nothing;
  if (!integration) {
    File('assets/translations/en.json').readAsString().then((String contents) {
      Map<String, dynamic> data = jsonDecode(contents);
      Localization.load(const Locale('en'), translations: Translations(data));
    });
  }

  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences.setMockInitialValues({});
  await EasyLocalization.ensureInitialized();
}
