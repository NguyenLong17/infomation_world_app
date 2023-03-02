import 'package:app_information_world/page/botton_navigation_bar_page.dart';
import 'package:flutter/material.dart';

import 'package:lottie/lottie.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  // @override
  // void initState() {
  //   Future.delayed(const Duration(seconds: 5), () {
  //     initData();
  //   });
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset(
          'assets/consts/76910-world-map-recolor.json',
          fit: BoxFit.fill,
        ),
      ),
    );
  }

  Future initData() async {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) => const BottomNavigationBarPage(),
      ),
    );
  }
}
