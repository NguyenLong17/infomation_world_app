import 'package:app_information_world/demo/demo_page.dart';
import 'package:app_information_world/page/botton_navigation_bar_page.dart';
import 'package:app_information_world/page/counties/countries_page.dart';
import 'package:app_information_world/page/counties/countries_region_page.dart';
import 'package:app_information_world/page/counties/country_detail_page.dart';
import 'package:app_information_world/page/search/search_detail_page.dart';
import 'package:app_information_world/page/search/search_page.dart';
import 'package:app_information_world/page/setting/language_translations.dart';
import 'package:app_information_world/page/setting/setting_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      locale: Language.locale,
      fallbackLocale: Language.fallbackLocale,
      translations: Language(),

      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => BottomNavigationBarPage()),
        GetPage(name: '/countries', page: () => CountriesPage()),
        GetPage(name: '/countriesRegion', page: () => CountriesRegionPage()),
        GetPage(name: '/countryDetail', page: () => CountryDetailPage()),
        GetPage(name: '/searchDetailPage', page: () => SearchDetailPage()),
        GetPage(name: '/searchPage', page: () => SearchPage()),
        GetPage(name: '/demoPage', page: () => DemoPage()),
        GetPage(name: '/settingPage', page: () => SettingPage()),
      ],

      // home: CountriesPage(),
    );
  }
}
