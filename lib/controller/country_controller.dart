import 'package:app_information_world/model/country.dart';
import 'package:app_information_world/service/api_service.dart';
import 'package:get/get.dart';

class CountryController extends GetxController {
  Rx<Country> country = Country().obs;

  final RxList<Country> listCountryBorders = <Country>[].obs;
  final List<String> listCodeCountryBorder = [];

  void getCountryByCode(String code)  {
    apiService.getCountryByCode(code).then((value) {
      country.value = value;
      // print('Data: ${country.value.borders?.length}');
      // listCodeCountryBorder.addAll(country.value.borders ?? []);
      // print('Code Boder: ${listCodeCountryBorder[0]}');
      // print('Code Boder: ${listCodeCountryBorder[1]}');
      // for (final code in listCodeCountryBorder) {
      //   apiService.getCountryByCode(code).then((value) {
      //     listCountryBorders.add(value);
      //   });
      // }
      // print('Country Boder: ${listCountryBorders.length}');
    });
  }


}
