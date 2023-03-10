import 'package:get/get.dart';

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': {
      'World': 'World',
      'Region': 'Region',
      'Search': 'Search',
      'Setting': 'Setting',
    },
    'de_DE': {
      'World': 'Thế giới',
      'Region': 'Vùng đất',
      'Search': 'Tìm kiếm',
      'Setting': 'Cài đặt',
    }
  };
}