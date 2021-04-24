import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Loading extends StatelessWidget {
  final double sizeHeight;
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;

  const Loading(
      {Key key,
      this.sizeHeight: 60,
      this.mainAxisAlignment: MainAxisAlignment.center,
      this.crossAxisAlignment: CrossAxisAlignment.center})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = (MediaQuery.of(context).size.height);
    final width = (MediaQuery.of(context).size.width);
    return Container(
      child: Column(
        children: [
          CircularProgressIndicator(
            backgroundColor: Colors.grey,
            strokeWidth: height * 1.6 / 100,
          )
        ],
        mainAxisAlignment: mainAxisAlignment,
        crossAxisAlignment: crossAxisAlignment,
      ),
      width: width,
      height: sizeHeight,
    );
  }
}
