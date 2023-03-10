import 'package:app_information_world/page/counties/countries_page.dart';
import 'package:app_information_world/page/home/home_page.dart';
import 'package:app_information_world/page/search/search_page.dart';
import 'package:app_information_world/page/setting/setting_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavigationBarPage extends StatefulWidget {
  const BottomNavigationBarPage({super.key});

  @override
  State<BottomNavigationBarPage> createState() =>
      _BottomNavigationBarPageState();
}

class _BottomNavigationBarPageState extends State<BottomNavigationBarPage> {

  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    const HomePage(),
    const CountriesPage(),
    const SearchPage(),
    const SettingPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(top: 1),
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black,
            ),
          ],
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(15),
            topLeft: Radius.circular(15),
          ),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,

          // backgroundColor: Colors.grey.shade200,
          elevation: 2,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              // icon: Icon(Icons.home),
              icon: const Icon(Icons.home),
              label: 'World'.tr,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.landscape),
              label: 'Region'.tr,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.search_outlined),
              label: 'Search'.tr,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.settings),
              label: 'Setting'.tr,
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.green[800],
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
