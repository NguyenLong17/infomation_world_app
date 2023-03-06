import 'package:app_information_world/common/consts.dart';
import 'package:app_information_world/controller/contries_controller.dart';
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
    final response = await get('$baseUrl/$type}/$region');
    final countries =
    List<Country>.from((response.body).map((e) => Country.fromJson(e)));
    return countries;
  }

  @override
  Future testAPI() async {
    print('---Data----:');

    final response = await get('https://restcountries.com/v2/alpha/VN');
    // final response = await get('https://63686fa947cee17982b2b192.mockapi.io/manga');
    final country = response.body;

    print('---Data----: ${country}');
  }


}

final apiService = ApiService();
