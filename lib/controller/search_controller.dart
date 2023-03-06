import 'package:app_information_world/model/country.dart';
import 'package:app_information_world/service/api_service.dart';
import 'package:get/get.dart';

class SearchController extends GetxController {
  final List<Country> listCountriesFil = <Country>[];
  bool isSelect = false;

  void checkSelected() {
    isSelect = !isSelect;
    update();
  }

  void getCountriesByRegion(String type, String value) {
    apiService.searchCountries(type, value).then((value) {
      listCountriesFil.addAll(value);
      update();
    });
  }
}
