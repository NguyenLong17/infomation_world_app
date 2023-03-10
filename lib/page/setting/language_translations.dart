import 'dart:collection';

import 'package:app_information_world/page/setting/language/st_en_us.dart';
import 'package:app_information_world/page/setting/language/st_vi_vn.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Language extends Translations {
// locale sẽ được get mỗi khi mới mở app (phụ thuộc vào locale hệ thống hoặc bạn có thể cache lại locale mà người dùng đã setting và set nó ở đây)
  static final locale = getLocaleFromLanguage();

// fallbackLocale là locale default nếu locale được set không nằm trong những Locale support
  static final fallbackLocale = Locale('en', 'US');

// language code của những locale được support
  static final langCodes = [
    'English',
    'Tiếng Việt',
  ];

// các Locale được support
  static final locales = [
    Locale('en', 'US'),
    Locale('vi', 'VN'),
  ];

// cái này là Map các language được support đi kèm với mã code của lang đó: cái này dùng để đổ data vào Dropdownbutton và set language mà không cần quan tâm tới language của hệ thống
  static final langs = LinkedHashMap.from({
    'English': 'English',
    'Tiếng Việt': 'Tiếng Việt',
  });

// function change language nếu bạn không muốn phụ thuộc vào ngôn ngữ hệ thống
//   static void changeLocale(String langCode) {
//     final locale = _getLocaleFromLanguage(langCode: langCode);
//     Get.updateLocale(locale);
//   }

  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': en,
        'vi_VN': vi,
      };

  static Locale? getLocaleFromLanguage({String? langCode}) {
    var lang = langCode ?? Get.deviceLocale?.languageCode;
    for (int i = 0; i < langCodes.length; i++) {
      if (lang == langCodes[i]) return locales[i];
    }
    return Get.locale;
  }
}
