import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CountriesPage extends StatefulWidget {
  const CountriesPage({Key? key}) : super(key: key);

  @override
  State<CountriesPage> createState() => _CountriesPageState();
}

class _CountriesPageState extends State<CountriesPage> {
  final regions = [
    "Châu Á",
    "Châu Âu",
    "Châu Phi",
    "Châu Đại Dương",
    "Châu Mỹ",
    "Châu Nam Cực"
  ];
  final stringRegion = [
    "Asia",
    "Europe",
    "Africa",
    "Oceania",
    "Americas",
    "SouthPole"
  ];

  final imageRegions = [
    "assets/images/Asia.PNG",
    "assets/images/Europe.PNG",
    "assets/images/Africa.PNG",
    "assets/images/Oceania.PNG",
    "assets/images/America.png",
    "assets/images/South_Pole.PNG",
  ];

  @override
  void initState() {
    // apiService.getCountryByCode("vietnam");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildBody(),
    );
  }

  Widget buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Image.asset("assets/images/dark_world.png"),
          const SizedBox(
            height: 16,
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.all(16),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Get.toNamed(
                    "/countriesRegion",
                    arguments: stringRegion[index],
                  );
                },
                child: Card(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                  ),
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Center(
                        child: Image.asset(
                          imageRegions[index],
                        ),
                      ),
                      Text(
                        regions[index],
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
            itemCount: regions.length,
          ),
        ],
      ),
    );
  }
}
