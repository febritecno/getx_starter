import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppSnackBar {
  static void dynamic(
      {String title = "Info",
      String message,
      Color colorText = Colors.white,
      Color backgroundColor = Colors.black,
      Icon icon,
      SnackPosition snackPosition = SnackPosition.BOTTOM}) {
    Get.snackbar(
      title,
      message,
      icon: icon ?? Icon(Icons.info_outline, color: Colors.white),
      colorText: colorText,
      backgroundColor: backgroundColor,
      forwardAnimationCurve: Curves.fastOutSlowIn,
      snackPosition: snackPosition,
      shouldIconPulse: true,
      margin: EdgeInsets.only(bottom: 5, left: 20, right: 20),
      isDismissible: true,
      duration: Duration(seconds: 3),
    );
  }

  static void success(String message) {
    Get.snackbar(
      "Success",
      message,
      icon: Icon(Icons.check_circle_outline_rounded, color: Colors.white),
      colorText: Colors.white,
      backgroundColor: Colors.green[900],
      forwardAnimationCurve: Curves.fastOutSlowIn,
      snackPosition: SnackPosition.TOP,
      shouldIconPulse: true,
      margin: EdgeInsets.only(bottom: 5, left: 20, right: 20),
      isDismissible: true,
      duration: Duration(seconds: 3),
    );
  }

  static void error(String message) {
    Get.snackbar(
      "Error",
      message,
      icon: Icon(Icons.error, color: Colors.white),
      colorText: Colors.white,
      backgroundColor: Colors.red[900],
      forwardAnimationCurve: Curves.fastOutSlowIn,
      snackPosition: SnackPosition.TOP,
      shouldIconPulse: true,
      margin: EdgeInsets.only(bottom: 5, left: 20, right: 20),
      isDismissible: true,
      duration: Duration(seconds: 3),
    );
  }
}
