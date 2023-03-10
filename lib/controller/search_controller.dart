import 'package:app_information_world/model/country.dart';
import 'package:app_information_world/service/api_service.dart';
import 'package:get/get.dart';

class SearchController extends GetxController with StateMixin {
  final List<Country> listCountriesFil = <Country>[];
  bool isSelect = false;

  void checkSelected() {
    isSelect = !isSelect;
    update();
  }

  void searchCountriesByKeyWord(String type, String value) {
    change(null, status: RxStatus.loading());

    listCountriesFil.clear();
    apiService.searchCountries(type, value).then((value) {
      listCountriesFil.addAll(value);
      update();
      change(null, status: RxStatus.success());
    });
  }
}
