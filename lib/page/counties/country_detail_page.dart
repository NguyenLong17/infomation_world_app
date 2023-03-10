import 'package:app_information_world/common/widgets/appbar.dart';
import 'package:app_information_world/controller/country_controller.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CountryDetailPage extends StatefulWidget {
  const CountryDetailPage({Key? key}) : super(key: key);

  @override
  State<CountryDetailPage> createState() => _CountryDetailPageState();
}

class _CountryDetailPageState extends State<CountryDetailPage> {
  var dataCode = Get.arguments.toString();

  CountryController countryController = Get.put(CountryController());

  @override
  void initState() {
    countryController.getCountryByCode(dataCode);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        appBar: buildAppBar(
          context: context,
          title: countryController.country.value.name ?? "",
          color: Colors.blue,
        ),
        body: buildBody(),
      ),
    );
  }

  Widget buildBody() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            buildAltSpellings(),
            buildRegion(),
            buildPopulation(),
            buildCurrencies(),
            buildLanguage(),
            Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(flex: 1, child: buildLocation()),
                Expanded(flex: 3, child: buildArea()),
              ],
            ),
            buildBorders(),
            buildTimeZone(),
          ],
        ),
      ),
    );
  }

  Widget buildAltSpellings() {
    return Card(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(25)),
      ),
      elevation: 2,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        height: 156,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                children: [
                   Text(
                    "Alt Spellings".tr,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Expanded(
                    child: ListView.separated(
                        itemBuilder: (context, index) {
                          final names =
                              countryController.country.value.altSpellings;
                          return Text("- ${names?[index] ?? ""}");
                        },
                        separatorBuilder: (context, index) => const SizedBox(
                              height: 4,
                            ),
                        itemCount: countryController
                                .country.value.altSpellings?.length ??
                            0),
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 4,
            ),
            Expanded(
              child: countryController.country.value.flags?.png != null
                  ? CachedNetworkImage(
                      // fit: BoxFit.cover,
                      imageUrl:
                          countryController.country.value.flags?.png ?? "",
                      placeholder: (context, url) =>
                          const Center(child: CircularProgressIndicator()),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                    )
                  : const SizedBox(),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildRegion() {
    return Card(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(25)),
      ),
      elevation: 2,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("${"Region".tr}: ${countryController.country.value.region}"),
            const SizedBox(
              height: 8,
            ),
            Text("${"Sub Region".tr} : ${countryController.country.value.subregion}"),
            const SizedBox(
              height: 8,
            ),
            Text("${"Native Name".tr}: ${countryController.country.value.nativeName}"),
            const SizedBox(
              height: 8,
            ),
            Text("${"Capital ".tr}: ${countryController.country.value.capital}"),
          ],
        ),
      ),
    );
  }

  Widget buildPopulation() {
    return Card(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(25)),
      ),
      elevation: 2,
      child: Container(
        alignment: Alignment.centerLeft,
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        child:
            Text("${"Population".tr} : ${countryController.country.value.population}"),
      ),
    );
  }

  Widget buildCurrencies() {
    return Card(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25)),
        ),
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Text(
                "Currencies".tr,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 8,
              ),
              ListView.separated(
                  // padding: const EdgeInsets.all(16),
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    final currency =
                        countryController.country.value.currencies?[index];
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("${"Name".tr} : ${currency?.name}"),
                        const SizedBox(
                          height: 8,
                        ),
                        Text("${"Code".tr} : ${currency?.code}"),
                        const SizedBox(
                          height: 8,
                        ),
                        Text("${"Symbol".tr} : ${currency?.symbol}"),
                      ],
                    );
                  },
                  // ignore: prefer_const_constructors
                  separatorBuilder: (context, index) => const Divider(
                        color: Colors.grey,
                        thickness: 1,
                      ),
                  itemCount:
                      countryController.country.value.currencies?.length ?? 0),
            ],
          ),
        ));
  }

  Widget buildLanguage() {
    return Card(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25)),
        ),
        elevation: 2,
        child:
            // Container(height: 100,color: Colors.green,),);

            Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Text(
                "Language".tr,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 2,
                    child: ListView.separated(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          final language =
                              countryController.country.value.languages?[index];
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("${"Name".tr} : ${language?.name}"),
                              const SizedBox(
                                height: 8,
                              ),
                              Text("${"Native Name".tr}  : ${language?.nativeName}"),
                              const SizedBox(
                                height: 8,
                              ),
                              Text("iso6391 : ${language?.iso6391}"),
                              const SizedBox(
                                height: 8,
                              ),
                              Text("iso6392 : ${language?.iso6392}"),
                            ],
                          );
                        },
                        // ignore: prefer_const_constructors
                        separatorBuilder: (context, index) => const Divider(
                              color: Colors.grey,
                              thickness: 1,
                              indent: 15,
                              endIndent: 15,
                            ),
                        itemCount:
                            countryController.country.value.languages?.length ??
                                0),
                  ),
                  Expanded(
                    flex: 1,
                    child: Image.asset("assets/images/language.png"),
                  ),
                  const SizedBox(
                    width: 16,
                  )
                ],
              ),
            ],
          ),
        ));
  }

  Widget buildLocation() {
    return Card(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(25)),
      ),
      elevation: 2,
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: 216,
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
               Text(
                "Latlng".tr,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 12,
              ),
              ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    final latlng =
                        countryController.country.value.latlng?[index];
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("${latlng ?? 00.00}"),
                      ],
                    );
                  },
                  // ignore: prefer_const_constructors
                  separatorBuilder: (context, index) => const Divider(
                        color: Colors.grey,
                        thickness: 1,
                      ),
                  itemCount:
                      countryController.country.value.latlng?.length ?? 0),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildArea() {
    return Card(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(25)),
      ),
      elevation: 2,
      child: Container(
        alignment: Alignment.centerLeft,
        height: 216,
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Column(
            children: [
              Text(
                "${"Area".tr}: ${countryController.country.value.area ?? "00.00"} km²",
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 8,
              ),
              Image.asset("assets/images/mountain.png")
              // Text("Population : ${dataPopulation}"),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildBorders() {
    return Card(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(25)),
      ),
      elevation: 2,
      child: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Text(
              "Country Border".tr,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 12,
            ),
            ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  final countryBorders =
                      countryController.country.value.borders?[index];
                  return GestureDetector(
                    onTap: () {
                      Get.toNamed(
                        "/countryDetail",
                        arguments: countryBorders,
                      );
                    },
                    child: Text(
                      countryBorders ?? "",
                    ),
                  );
                },
                separatorBuilder: (context, index) => const Divider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                itemCount:
                    countryController.country.value.borders?.length ?? 0),
          ],
        ),
      ),
    );
  }

  Widget buildTimeZone() {
    return Card(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(25)),
      ),
      elevation: 2,
      child: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Text(
              "Time Zone".tr,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 12,
            ),
            ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  final timeZone =
                      countryController.country.value.timezones?[index];
                  return Text(timeZone ?? "");
                },
                separatorBuilder: (context, index) => const Divider(
                      color: Colors.grey,
                      thickness: 1,
                      indent: 15,
                      endIndent: 15,
                    ),
                itemCount:
                    countryController.country.value.timezones?.length ?? 0),
          ],
        ),
      ),
    );
  }
}
