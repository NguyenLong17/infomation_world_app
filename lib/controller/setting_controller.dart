import 'package:app_information_world/page/setting/language_translations.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingController extends GetxController {
  bool light = false;

  void changeTheme(bool value) {
    Get.changeTheme(light ? ThemeData.light() : ThemeData.dark());
    light = value;
    update();
  }


  String dropdownValue = Language.langCodes[0];

  void changeLanguage(String value) {
    dropdownValue = value;
    var location = Language.getLocaleFromLanguage(langCode: value);
    Get.updateLocale(location ?? Locale("", ""));
    update();
  }


  bool isPlay = true;

  void checkPlayMusic() {
    isPlay = !isPlay;
    update();
  }
}
