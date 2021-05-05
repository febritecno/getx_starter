import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoundContainerApp extends StatelessWidget {
  final Gradient gradient;
  final DecorationImage image;
  final Color shadowColor, borderColor, color;
  final double shadowSpreadRadius, shadowBlurRadius, borderWidth;
  final bool isEnableBorder, isEnableShadow;
  final BorderRadius borderRadius;
  final Widget child;
  final double height, width;

  const RoundContainerApp({
    Key key,
    this.height,
    this.width,
    this.gradient,
    this.image,
    this.shadowColor: Colors.black12,
    this.shadowSpreadRadius: 0.5,
    this.shadowBlurRadius: 6,
    this.borderColor: Colors.transparent,
    this.borderWidth: 2,
    this.color: Colors.white,
    this.borderRadius,
    @required this.child,
    @required this.isEnableBorder,
    @required this.isEnableShadow,
  }) : super(key: key);

  @override
  // Container builder shadow, border and round shape
  Widget build(BuildContext context) {
    return Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            border: (isEnableBorder == true)
                ? Border.all(color: borderColor, width: borderWidth)
                : null,
            color: color,
            gradient: gradient,
            image: image,
            boxShadow: (isEnableShadow == true)
                ? [
                    BoxShadow(
                        offset: Offset.fromDirection(1.5, 6),
                        spreadRadius: shadowSpreadRadius,
                        blurRadius: shadowBlurRadius,
                        color: shadowColor)
                  ]
                : null,
            borderRadius: borderRadius),
        child: child);
  }
}
