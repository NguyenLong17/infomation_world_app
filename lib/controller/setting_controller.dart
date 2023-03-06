import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingController extends GetxController {
  bool light = false;

  void changeTheme(bool value) {
    Get.changeTheme(light ? ThemeData.light() : ThemeData.dark());
    light = value;
    update();
  }

  final listLanguage = ['VietNam', 'English',];

  String dropdownValue = "VietNam";

  void changeLanguage(String value) {
    dropdownValue = value;
    update();
  }


  bool isPlay = true;

  void checkPlayMusic() {
    isPlay = !isPlay;
    update();
  }
}
