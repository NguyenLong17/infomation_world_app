import 'package:app_information_world/controller/search_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final typeSearch = ["name", "currency", "lang", "capital"];

  // final nameSearch = ["Tên", "Tiền tệ", "Ngôn ngữ", "Thủ đô"];
  final nameSearch = ["Name", "Currency", "Language", "Capital"];
  final describeSearch = [
    "Country name: Vietnam, America, Peru...",
    "Currency: VND, USD, peru...",
    "Language: pt(Portuguese), nl(Dutch), hr(Croatian), vi(VietNam), es(Spanish), ja(Japanese)...",
    "The capital of a country: Tokyo, HaNoi, lima..."
  ];

  final SearchController searchController = Get.put(SearchController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: buildBody(),
      ),
    );
  }

  Widget buildBody() {
    return GetBuilder<SearchController>(builder: (context) {
      return ListView.separated(
          padding: const EdgeInsets.all(8),
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Get.toNamed("/searchDetailPage", arguments: {
                  "nameSearch" : nameSearch[index],
                  "describeSearch" : describeSearch[index],
                  "typeSearch" : typeSearch[index],
                });
              },
              child: Card(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    width: 64,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Icon(Icons.search_outlined),
                            const SizedBox(width: 16),
                            Text(
                              nameSearch[index],
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Text(
                          describeSearch[index],
                          style: const TextStyle(fontWeight: FontWeight.normal),
                        )
                      ],
                    ),
                  )),
            );
          },
          separatorBuilder: (context, index) {
            return const SizedBox(
              height: 16,
            );
          },
          itemCount: typeSearch.length);
    });
  }
}
