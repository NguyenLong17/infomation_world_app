import 'package:app_information_world/common/widgets/appbar.dart';
import 'package:app_information_world/controller/search_controller.dart';
import 'package:app_information_world/service/api_service.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchDetailPage extends StatefulWidget {
  const SearchDetailPage({Key? key}) : super(key: key);

  @override
  State<SearchDetailPage> createState() => _SearchDetailPageState();
}

class _SearchDetailPageState extends State<SearchDetailPage> {
  final SearchController searchController = Get.put(SearchController());
  final keyWordController = TextEditingController();

  final dataNameSearch = Get.arguments["nameSearch"].toString();
  final dataTypeSearch = Get.arguments["typeSearch"].toString();
  final dataDescribeSearch = Get.arguments["describeSearch"].toString();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        context: context,
        title: "Search by $dataTypeSearch",
        color: Colors.blue,
      ),
      body: buildBody(),
    );
  }

  Widget buildBody() {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: keyWordController,
                  decoration: InputDecoration(labelText: dataNameSearch),
                ),
              ),
              SizedBox(
                width: 16,
              ),
              GestureDetector(
                onTap: () {
                  apiService.testAPI();
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      topLeft: Radius.circular(25),
                    ),
                  ),
                  child: Row(
                    children: [
                      Text(
                        "Search",
                        style: TextStyle(fontSize: 24),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Icon(
                        Icons.search_outlined,
                        size: 30,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Text(dataDescribeSearch),
          SizedBox(
            height: 16,
          ),
          GetBuilder<SearchController>(builder: (context) {
            return ListView.builder(
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 8),
              itemBuilder: (context, index) {
                final country = searchController.listCountriesFil[index];
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
                      padding: const EdgeInsets.symmetric(
                          horizontal: 2, vertical: 4),
                      height: 72,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: CachedNetworkImage(
                              fit: BoxFit.cover,
                              imageUrl: country.flags?.png ?? "",
                              placeholder: (context, url) => const Center(
                                  child: CircularProgressIndicator()),
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
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
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
              itemCount: searchController.listCountriesFil.length,
            );
          }),
        ],
      ),
    );
  }
}
