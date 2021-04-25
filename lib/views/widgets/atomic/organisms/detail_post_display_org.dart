// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:lets_goto_solo/config/constants/base_colors.dart';
// import 'package:lets_goto_solo/config/constants/constants.dart';
// import 'package:lets_goto_solo/config/helpers/third_party/relative_scale.dart';
// import 'package:lets_goto_solo/views/widgets/atomic/atoms/back_btn_atom.dart';
// import 'package:lets_goto_solo/views/widgets/atomic/atoms/container_ornamen_atom.dart';
// import 'package:lets_goto_solo/views/widgets/atomic/atoms/rounded_container_atom.dart';
// import 'package:lets_goto_solo/views/widgets/templates/safe_area_app.dart';
// import 'package:lets_goto_solo/views/widgets/templates/text_app.dart';
// import 'package:optimized_cached_image/optimized_cached_image.dart';
//
// class DetailPostDisplay extends GetView {
//   final String networkImageUrl;
//   final List<Widget> children;
//
//   const DetailPostDisplay({
//     Key key,
//     @required this.children,
//     this.networkImageUrl: ConstVars.defaultNetImgError,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     final int containerHeight = 70;
//     final int containerPadTop = 100 - containerHeight;
//     return RelativeBuilder(
//         builder: (context, screenHeight, screenWidth, sy, sx) {
//       final sizeMenuHeight = screenHeight * 18 / 100;
//       return SafeAreaApp(
//           safeAreaWidget: Stack(children: [
//             Opacity(
//                 opacity: 0.5,
//                 child: Container(
//                   width: screenWidth,
//                   height: sy(250),
//                   child: OptimizedCacheImage(
//                     fit: BoxFit.cover,
//                     imageUrl: networkImageUrl,
//                     height: sizeMenuHeight,
//                     placeholder: (context, url) => Column(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         SizedBox(
//                           height: sy(30),
//                         ),
//                         CircularProgressIndicator()
//                       ],
//                     ),
//                     errorWidget: (context, url, error) => Column(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         SizedBox(
//                           height: sy(30),
//                         ),
//                         Icon(
//                           Icons.error,
//                           size: sy(60),
//                           color: Colors.white,
//                         )
//                       ],
//                     ),
//                   ),
//                 )),
//             Column(children: [
//               Container(
//                 padding: EdgeInsets.only(left: sx(20), top: sy(80)),
//                 child: Row(
//                   children: [
//                     BackBtn(
//                       child: TextApp(
//                         "detail".tr,
//                         color: Colors.white,
//                         fontSize: sy(20),
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ],
//                 ),
//               )
//             ]),
//           ]),
//           children: [
//             Padding(
//               padding:
//                   EdgeInsets.only(top: screenHeight * containerPadTop / 100),
//               child: RoundedContainer(
//                 isCustomBorderRadius: true,
//                 height: screenHeight * containerHeight / 100,
//                 color: BaseColors.bgColor,
//                 child: Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       ContainerOrnament(padding: sy(6)),
//                       Container(
//                           child: Column(
//                         children: children,
//                       ))
//                     ]),
//                 circleRadius: sy(ConstVars.defaultRounded),
//               ),
//             )
//           ]);
//     });
//   }
// }
