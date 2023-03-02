import 'package:app_information_world/model/country.dart';

abstract class CountryService {
  Future<List<Country>> getAllCountry(); // Object

  Future<List<Country>> getCountryByName(String name); // Object

  Future getCountryByCurrency(); // List

  Future getCountryByLanguage(); // List

  Future getCountryByCapitalCity(); // Object

  Future getCountryByRegion(); // List

  Future getCountryBySubregion(); // List
}
