import 'package:app_information_world/app_colors.dart';
import 'package:app_information_world/common/widgets/appbar.dart';
import 'package:app_information_world/page/home/chart_world_ratio_page.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: buildAppBar(context: context, title: "Tổng quan thế giới"),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Column(
          children: [
            buildTitle(),
            buildGraph(),
            buildChatWorldRatioPage(),
          ],
        ),
      ),
    );
  }

  Widget buildTitle() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 2,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25)),
        ),
        child: Container(
          padding: const EdgeInsets.all(8),
          height: 200,
          width: double.infinity,
          child: Column(
            children: [
              const Text(
                "Tổng quan thế giới",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 22,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: Lottie.asset(
                      'assets/consts/49242-world.json',
                      fit: BoxFit.fill,
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Dân số",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Card(
                          elevation: 2,
                          child: Row(
                            children: [
                              const Icon(Icons.people),
                              const SizedBox(
                                width: 4,
                              ),
                              Expanded(
                                child: Column(
                                  children: const [
                                    Text(
                                      "8.005.854.197",
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Text("(01/03/2023)"),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        const Text(
                          "Diện tích bề mặt",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Card(
                          elevation: 2,
                          child: Row(
                            children: [
                              const Icon(Icons.people),
                              const SizedBox(
                                width: 4,
                              ),
                              Expanded(
                                child: Column(
                                  children: const [
                                    Text(
                                      "510.100.000 km²",
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildGraph() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: Card(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(25)),
              ),
              elevation: 2,
              child: Container(
                height: 200,
                padding:
                    const EdgeInsets.symmetric(vertical: 24, horizontal: 8),
                child: Column(
                  children: [
                    const Text(
                        "Biểu đồ dân số thế giới: quá khứ, hiện tại và tương lai"),
                    const SizedBox(
                      height: 4,
                    ),
                    Expanded(
                        child:
                            Image.asset("assets/images/Population_chart.png")),
                  ],
                ),
                // width: MediaQuery.of(context).size.width / 2,
              ),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Expanded(
            child: Card(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(25)),
              ),
              elevation: 2,
              child: Container(
                height: 200,

                padding:
                    const EdgeInsets.symmetric(vertical: 24, horizontal: 8),
                child: Column(
                  children: [
                    const Text("Biểu đồ tốc độ tăng dân số thế giới"),
                    const SizedBox(
                      height: 4,
                    ),
                    Expanded(
                      child: Image.asset(
                          "assets/images/Graph_of_population_growth_rate.png"),
                    ),
                  ],
                ),
                // width: MediaQuery.of(context).size.width / 2,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildChatWorldRatioPage() {
    return Row(
      children: [
        const Expanded(child: ChatWorldRatioPage()),
        Column(
          children: const [
            Text(
              "Đất liền",
              style: TextStyle(
                  fontSize: 20,
                  color: AppColors.contentColorBrown,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              "Biển",
              style: TextStyle(
                  fontSize: 20,
                  color: AppColors.contentColorBlue,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        const SizedBox(
          width: 32,
        )
      ],
    );
  }
}
