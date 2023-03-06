import 'package:app_information_world/common/widgets/appbar.dart';
import 'package:app_information_world/controller/contries_controller.dart';
import 'package:app_information_world/controller/country_controller.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CountriesRegionPage extends StatefulWidget {
  const CountriesRegionPage({Key? key}) : super(key: key);

  @override
  State<CountriesRegionPage> createState() => _CountriesRegionPageState();
}

class _CountriesRegionPageState extends State<CountriesRegionPage> {
  var dataRegion = Get.arguments.toString();
  CountriesController countriesController = Get.put(CountriesController());

  @override
  void initState() {
    countriesController.getCountriesByRegion(dataRegion);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
          context: context,
          title: dataRegion,
          color: Colors.blue,
          actions: [
            IconButton(
                onPressed: () {
                  setState(() {});
                },
                icon: const Icon(Icons.access_time_filled))
          ]),
      body: countriesController.listCountry == null
          ? buildBody()
          : Center(
              child: CircularProgressIndicator(),
            ),
    );
  }

  Widget buildBody() {
    return Obx(
      () => ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 8),
        itemBuilder: (context, index) {
          final country = countriesController.listCountry[index];
          return GestureDetector(
            onTap: () {
              Get.toNamed(
                "/countryDetail",
                arguments: country.alpha3Code,
              );
            },
            child: Card(
              child: Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 4),
                height: 72,
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: CachedNetworkImage(
                        fit: BoxFit.cover,
                        imageUrl: country.flags?.png ?? "",
                        placeholder: (context, url) =>
                            const Center(child: CircularProgressIndicator()),
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.error),
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      flex: 5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            country.name ?? "",
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Expanded(
                            child: Text(
                              country.nativeName ?? "",
                              overflow: TextOverflow.ellipsis,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
        itemCount: countriesController.listCountry.length,
      ),
    );
  }
}
