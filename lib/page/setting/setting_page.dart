import 'package:app_information_world/controller/setting_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingPage extends StatefulWidget {
  SettingPage({Key? key}) : super(key: key);

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
                  child: const Text("Change Theme"),
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
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(25)),
            ),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(16),
                  child: Text("Change Language"),
                ),
                DropdownButton<String>(
                  value: settingController.dropdownValue,
                  icon: Icon(Icons.arrow_drop_down_sharp),
                  elevation: 16,
                  style: TextStyle(color: Colors.black),
                  underline: Container(
                    height: 2,
                  ),
                  onChanged: (String? value) {
                    // This is called when the user selects an item.
                    settingController.changeLanguage(value ?? "");
                  },
                  items: settingController.listLanguage
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
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(25)),
            ),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(16),
                  child: Text("Music"),
                ),
                GetBuilder<SettingController>(builder: (context) {
                  return IconButton(
                    splashColor: Colors.transparent,
                    onPressed: () {
                      settingController.checkPlayMusic();
                    },
                    icon: settingController.isPlay
                        ? Icon(Icons.play_circle)
                        : Icon(Icons.stop_circle),
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
