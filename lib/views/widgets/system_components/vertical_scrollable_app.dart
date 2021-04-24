import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VerticalScrollableApp extends StatelessWidget {
  final List<Widget> children;
  final double height, width;
  final Color color;
  final ScrollController controller;
  final Key scrollKey;
  final double top, left, right, bottom;
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;
  final ScrollPhysics scrollPhysics;

  VerticalScrollableApp(
      {@required this.children,
      this.height,
      this.top: 0,
      this.left: 0,
      this.right: 0,
      this.bottom: 0,
      this.color: Colors.transparent,
      this.controller,
      this.scrollKey,
      this.width,
      this.mainAxisAlignment: MainAxisAlignment.center,
      this.crossAxisAlignment: CrossAxisAlignment.center,
      this.scrollPhysics});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height ?? MediaQuery.of(context).size.height * 20 / 100,
        width: width ?? MediaQuery.of(context).size.width,
        padding:
            EdgeInsets.only(top: top, right: right, bottom: bottom, left: left),
        child: Material(
          color: color,
          child: SingleChildScrollView(
              controller: controller,
              key: scrollKey,
              physics: scrollPhysics ?? BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              child: Column(
                  mainAxisAlignment: mainAxisAlignment,
                  crossAxisAlignment: crossAxisAlignment,
                  children: children)),
        ));
  }
}
