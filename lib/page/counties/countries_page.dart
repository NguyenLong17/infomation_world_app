import 'package:app_information_world/service/api_service.dart';
import 'package:flutter/material.dart';

class CountriesPage extends StatefulWidget {
  const CountriesPage({Key? key}) : super(key: key);

  @override
  State<CountriesPage> createState() => _CountriesPageState();
}

class _CountriesPageState extends State<CountriesPage> {

  @override
  void initState() {
    apiService.getCountryByName("vietnam");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
