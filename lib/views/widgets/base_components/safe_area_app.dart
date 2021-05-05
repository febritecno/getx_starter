import 'package:apple_music_searchly/views/widgets/atomic/atoms/backround_app.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SafeAreaApp extends StatelessWidget {
  final Widget safeAreaWidget;
  final Color bgColor;
  final Widget stackWidget;
  final List<Widget> children;

  const SafeAreaApp(
      {Key key,
      @required this.children,
      this.bgColor: Colors.transparent,
      this.safeAreaWidget,
      this.stackWidget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackroundApp(bgColor: bgColor, children: [
      Stack(children: [
        SafeArea(
          bottom: true,
          child: safeAreaWidget ?? SizedBox(),
        ),
        Column(children: children),
        stackWidget ?? SizedBox(),
      ])
    ]);
  }
}
