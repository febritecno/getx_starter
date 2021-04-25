import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BackroundApp extends StatelessWidget {
  final Color bgColor;
  final List<Widget> children;

  const BackroundApp({this.bgColor: Colors.black, this.children});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: bgColor,
        body: Column(
          children: children,
        ));
  }
}
