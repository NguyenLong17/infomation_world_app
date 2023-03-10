import 'package:app_information_world/demo/countryv3.dart';
import 'package:app_information_world/service/api_service.dart';
import 'package:get/get.dart';

class DemoController extends GetxController {
  final List<Countryv3> listCountries = [];

  @override
  void onInit() {
    print('DemoController.onInit');
    getCountriesv3n();
    super.onInit();
  }

  void getCountriesv3n() {
    apiService.getCountriesv3().then((value) {
      listCountries.addAll(value);
      update();
    });
  }
}
