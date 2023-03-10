import 'package:app_information_world/demo/demo_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DemoPage extends StatelessWidget {
  const DemoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final DemoController demoController = Get.put(DemoController());

    return Scaffold(
      appBar: AppBar(
        title: Text("Demo Page"),
        actions: [
          IconButton(onPressed: () {
            demoController.getCountriesv3n();
          }, icon: Icon(Icons.add_chart_outlined))
        ],
      ),
      body: GetBuilder<DemoController>(
        init: DemoController(),

        builder: (context) {
          return ListView.builder(
            padding: EdgeInsets.all(16),
            itemBuilder: (context, index) {
              final country = demoController.listCountries[index];
              return Container(
                padding: EdgeInsets.all(16),
                child: Text(country.name?.common ?? ""),
              );
            },
            itemCount: demoController.listCountries.length,
          );
        },
      ),
    );
  }
}
