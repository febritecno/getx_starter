import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loading_skeleton/loading_skeleton.dart';

class SLoading extends StatelessWidget {
  final double width;
  final double height;
  final AnimationEnd animationEnd;

  const SLoading(
      {Key key,
      this.width: 10,
      this.height: 10,
      this.animationEnd: AnimationEnd.EXTREMELY_ON_BOTTOM})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LoadingSkeleton(colors: [
      Colors.black26,
      Colors.grey[200],
      Colors.grey[400],
    ], animationEnd: animationEnd, width: width, height: height);
  }
}
