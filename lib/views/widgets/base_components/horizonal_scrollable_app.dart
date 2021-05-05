import 'package:flutter/material.dart';

class HorizontalScrollableApp extends StatelessWidget {
  final Widget widget;
  final Key scrollKey;
  final ScrollController controller;
  final ScrollPhysics scrollPhysics;

  const HorizontalScrollableApp(
      {Key key,
      @required this.widget,
      this.controller,
      this.scrollKey,
      this.scrollPhysics})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: controller,
      key: scrollKey,
      physics: scrollPhysics ?? BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: widget,
    );
  }
}
