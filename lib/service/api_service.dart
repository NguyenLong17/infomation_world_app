import 'package:app_information_world/common/consts.dart';
import 'package:app_information_world/controller/contries_controller.dart';
import 'package:app_information_world/demo/countryv3.dart';
import 'package:app_information_world/model/country.dart';
import 'package:app_information_world/service/country_service.dart';
import 'package:get/get.dart';

class ApiService extends GetConnect implements CountryService {
  @override
  Future<List<Country>> getAllCountry() async {
    final response = await get('$baseUrl/all');
    final countries =
        List<Country>.from((response.body).map((e) => Country.fromJson(e)));
    return countries;
  }

  @override
  Future<Country> getCountryByCode(String code) async {
    final response = await get('$baseUrl/alpha/$code');
    final country = Country.fromJson(response.body);
    return country;
  }

  @override
  Future<List<Country>> getCountriesByRegion(String region) async {
    final response = await get('$baseUrl/region/$region');
    final countries =
        List<Country>.from((response.body).map((e) => Country.fromJson(e)));
    return countries;
  }

  @override
  Future<List<Country>> searchCountries(String type, String region) async {
    print('ApiService.searchCountries');
    final response = await get('$baseUrl/$type/$region');
    print('----Data Re: ${response.body}');
    final countries =
    List<Country>.from((response.body).map((e) => Country.fromJson(e)));
    print('=====Data.length: ${countries.length}');
    return countries;
  }

  Future<List<Countryv3>> getCountriesv3() async {
    final response = await get("https://restcountries.com/v3.1/currency/vnd");
    Future.delayed(Duration(seconds: 15));
    print('-----Data Re--1--: ${response.body}');

    final countries =
    List<Countryv3>.from((response.body).map((e) => Countryv3.fromJson(e)));
    print('-----Data Re---2-: ${response.body}');

    return countries;
  }




}

final apiService = ApiService();
