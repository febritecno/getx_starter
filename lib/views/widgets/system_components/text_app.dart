import 'package:apple_music_searchly/config/constants/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextApp extends StatelessWidget {
  final String text;
  final TextAlign textAlign;
  final int maxLines;
  final TextOverflow overflow;
  final bool softWrap;
  final TextDirection textDirection;
  final FontWeight fontWeight;
  final double fontSize, wordSpacing;
  final fontFamily;
  final Color color;
  final FontStyle fontStyle;
  final TextDecoration textDecoration;
  final List<Shadow> shadows;

  const TextApp(this.text,
      {Key key,
      this.textAlign,
      this.maxLines,
      this.overflow,
      this.softWrap,
      this.textDirection,
      this.fontWeight,
      this.fontSize,
      //change default font
      this.fontFamily: ConstVars.defaultFont,
      this.color: Colors.black,
      this.fontStyle,
      this.textDecoration,
      this.shadows,
      this.wordSpacing})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
      softWrap: softWrap,
      textDirection: textDirection,
      textScaleFactor: ConstVars.defaultTextScaling,
      style: TextStyle(
          fontWeight: fontWeight,
          fontSize: fontSize,
          fontFamily: fontFamily,
          color: color,
          fontStyle: fontStyle),
    );
  }
}
