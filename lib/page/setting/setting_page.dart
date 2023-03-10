import 'package:app_information_world/controller/setting_controller.dart';
import 'package:app_information_world/page/setting/language_translations.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  final SettingController settingController = Get.put(SettingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildBody(),
    );
  }

  Widget buildBody() {
    return GetBuilder<SettingController>(builder: (context) {
      return ListView(
        children: [
          Card(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(25)),
            ),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(16),
                  child: Text("Change Theme".tr),
                ),
                Switch(
                    activeColor: Colors.black,
                    value: settingController.light,
                    onChanged: (bool value) {
                      settingController.changeTheme(value);
                    }),
              ],
            ),
          ),
          Card(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(25)),
            ),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(16),
                  child: Text("Change Language".tr),
                ),
                DropdownButton<String>(
                  value: settingController.dropdownValue,
                  icon: const Icon(Icons.arrow_drop_down_sharp),
                  elevation: 16,
                  underline: Container(
                    height: 2,
                  ),
                  onChanged: (String? value) {
                    // This is called when the user selects an item.
                    // settingController.changeLanguage(value ?? "");
                    settingController.changeLanguage(value ?? "");
                  },
                  items: Language.langCodes
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
          Card(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(25)),
            ),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(16),
                  child: Text("Music".tr),
                ),
                GetBuilder<SettingController>(builder: (context) {
                  return IconButton(
                    splashColor: Colors.transparent,
                    onPressed: () {
                      settingController.checkPlayMusic();
                    },
                    icon: settingController.isPlay
                        ? const Icon(Icons.play_circle)
                        : const Icon(Icons.stop_circle),
                  );
                }),
              ],
            ),
          )
        ],
      );
    });
  }
}
