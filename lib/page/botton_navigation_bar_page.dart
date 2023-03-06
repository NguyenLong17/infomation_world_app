import 'package:app_information_world/page/counties/countries_page.dart';
import 'package:app_information_world/page/home/home_page.dart';
import 'package:app_information_world/page/search/search_page.dart';
import 'package:app_information_world/page/setting/setting_page.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarPage extends StatefulWidget {
  const BottomNavigationBarPage({super.key});

  @override
  State<BottomNavigationBarPage> createState() =>
      _BottomNavigationBarPageState();
}

class _BottomNavigationBarPageState extends State<BottomNavigationBarPage> {
  static const IconData globe = IconData(0xf68d);

  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static final List<Widget> _widgetOptions = <Widget>[
    const HomePage(),
    const CountriesPage(),
    const SearchPage(),
    SettingPage(),
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
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(15),
          topLeft: Radius.circular(15),
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.grey.shade300,
          elevation: 2,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              // icon: Icon(Icons.home),
              icon: Icon(Icons.home),
              label: 'World',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.landscape),
              label: 'Region',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search_outlined),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search_outlined),
              label: 'Setting',
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
