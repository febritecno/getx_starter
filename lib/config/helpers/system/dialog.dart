import 'package:apple_music_searchly/views/widgets/system_components/text_app.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_aware_dialog/flutter_keyboard_aware_dialog.dart';
import 'package:get/get.dart';

class AppDialog {
  static void selectWidget(Widget child) {
    Get.dialog(child, barrierColor: Colors.black12, barrierDismissible: true);
  }

  static void safeKeyboard(
      {String title = "Info",
      List<Widget> children,
      bool isEnableFooter = false,
      bool isEnableHeader = false,
      Widget footerWidget,
      Widget headerWidget,
      Function onTapBtn}) {
    double percentHeight = (Get.height / 100);
    Get.dialog(
        KeyboardAwareDialog(
          child: Padding(
            child: Column(children: [
              (isEnableHeader)
                  ? headerWidget
                  : TextApp(
                      title,
                      fontWeight: FontWeight.bold,
                      maxLines: 2,
                      overflow: TextOverflow.clip,
                      textAlign: TextAlign.center,
                      fontSize: Get.width * 6 / 100,
                    ),
              SizedBox(
                height: percentHeight * 6,
              ),
              Column(
                children: children,
              ),
              SizedBox(
                height: percentHeight * 6,
              ),
              (isEnableFooter) ? footerWidget : SizedBox()
            ]),
            padding: EdgeInsets.all(percentHeight * 3),
          ),
        ),
        barrierColor: Colors.black54,
        barrierDismissible: true);
  }

  static void staticInfo(
      {String title = "Info",
      String btnTitle = "OK",
      List<Widget> content,
      Function onConfirm}) {
    Get.defaultDialog(
        title: title,
        onConfirm: onConfirm,
        textConfirm: btnTitle,
        content: Column(
              children: content,
            ) ??
            Center(child: Icon(Icons.info_outline)),
        confirmTextColor: Colors.white,
        buttonColor: Colors.black);
  }
}
