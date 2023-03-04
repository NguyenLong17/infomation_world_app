import 'package:app_information_world/common/consts.dart';
import 'package:app_information_world/controller/contries_controller.dart';
import 'package:app_information_world/model/country.dart';
import 'package:app_information_world/model/countryv3.dart';
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
  Future getCountryByCapitalCity() {
    // TODO: implement getCountryByCapitalCity
    throw UnimplementedError();
  }

  @override
  Future getCountryByCurrency() {
    // TODO: implement getCountryByCurrency
    throw UnimplementedError();
  }

  @override
  Future getCountryByLanguage() {
    throw UnimplementedError();
  }

  @override
  Future getCountryBySubregion() {
    // TODO: implement getCountryBySubregion
    throw UnimplementedError();
  }
}

final apiService = ApiService();
