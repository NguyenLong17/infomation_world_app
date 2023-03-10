import 'package:app_information_world/model/country.dart';
import 'package:app_information_world/service/api_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';

class CountriesController extends GetxController with StateMixin {
  final RxList<Country> listCountry = <Country>[].obs;

  // List<Countryv3> test = [];

  @override
  void onInit() async {
    super.onInit();
    // gerInfo();
  }

  // Future<void> gerInfo() async {
  //   print('CountriesController.gerInfo');
  //   final res = await Dio().get('https://restcountries.com/v3.1/all');
  //   if (res.data != null) {
  //     print('--------------------------1---------------------');
  //     Logger().d(res.data[0]);
  //     test = List<Countryv3>.from(res.data);
  //     print('Data: ${test[0]}');
  //     update();
  //     print('--------------------------2---------------------');
  //   }
  // }

  void getCountriesByRegion(String region) {
    change(null, status: RxStatus.loading());

    apiService.getCountriesByRegion(region).then((value) {
      listCountry.addAll(value);
      update();
      change(null, status: RxStatus.success());
    });
  }
}
