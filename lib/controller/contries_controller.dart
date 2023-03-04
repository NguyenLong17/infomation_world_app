import 'package:app_information_world/model/country.dart';
import 'package:app_information_world/model/countryv3.dart';
import 'package:app_information_world/service/api_service.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';

class CountriesController extends GetxController {
  final RxList<Country> listCountry = <Country>[].obs;
  List<Countryv3> test = [];

  @override
  void onInit() async {
    super.onInit();
    gerInfo();
  }

  Future<void> gerInfo() async {
    final res = await Dio().get('https://restcountries.com/v3.1/all');
    if(res.data != null){
      print('--------------------------1---------------------');
      Logger().d(res.data);
      test = List<Countryv3>.from(res.data);
      update();
      print('--------------------------2---------------------');
    }
  }

  void getCountriesByRegion(String region) {
    apiService.getCountriesByRegion(region).then((value) {
      listCountry.addAll(value);
    });
  }



}
