import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InkWellApp extends StatelessWidget {
  final Function onTap;
  final Widget child;
  final double paddingAll;
  final EdgeInsets paddingOnly;
  final bool isPaddingAll;

  const InkWellApp(
      {Key key,
      @required this.onTap,
      this.paddingAll: 2,
      @required this.child,
      this.paddingOnly,
      this.isPaddingAll: true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      enableFeedback: true,
      child: Padding(
          padding:
              (isPaddingAll == true) ? EdgeInsets.all(paddingAll) : paddingOnly,
          child: child ?? SizedBox()),
    );
  }
}
