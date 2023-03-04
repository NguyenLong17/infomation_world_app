import 'package:app_information_world/controller/contries_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<CountriesController>(
        init: CountriesController(),
        builder: (controller) {
          return SizedBox(
            height: Get.height,
            width: Get.width,
            child: ListView.builder(
              itemCount: controller.test.length,
              itemBuilder: (context, index) {
                final item = controller.test[index];
                return Text(item.name.common);
              },
            ),
          );
        }
      ),
    );
  }
}
