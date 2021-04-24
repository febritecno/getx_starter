import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppBottomSheet {
  static void static(Icon icon, List<String> text, List<Function> callback) {
    Get.bottomSheet(Container(
      color: Colors.white,
      child: Wrap(
        children: <Widget>[
          ListTile(leading: icon, title: Text(text[0]), onTap: callback[0]),
          ListTile(
            leading: icon,
            title: Text(text[1]),
            onTap: callback[1],
          ),
        ],
      ),
    ));
  }

  static void custom(List<Widget> children) {
    Get.bottomSheet(Container(
      color: Colors.white,
      child: Wrap(
        children: children,
      ),
    ));
  }
}
