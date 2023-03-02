import 'package:flutter/material.dart';

AppBar buildAppBar({
  required BuildContext context,
  required String title,
  Color? color,
  List<Widget>? actions,
  Widget? leading,
}) {
  return AppBar(
    leading: leading,
    centerTitle: true,
    elevation: 0,
    title: Text(
      title,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
    ),
    backgroundColor: color ?? Colors.white10,
    actions: actions,
  );
}
