import 'package:app_information_world/model/country.dart';

abstract class CountryService {
  Future<List<Country>> getAllCountry(); // Object

  Future<Country> getCountryByCode(String code);//  Object

  Future<List<Country>> getCountriesByRegion(String region); // List

  Future getCountryByCurrency(); // List

  Future getCountryByLanguage(); // List

  Future getCountryByCapitalCity(); // Object

  Future getCountryBySubregion(); // List

}
