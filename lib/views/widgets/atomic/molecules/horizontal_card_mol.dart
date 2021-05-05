// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:lets_goto_solo/config/constants/app_constants.dart';
// import 'package:lets_goto_solo/config/helpers/third_party/relative_scale.dart';
// import 'package:lets_goto_solo/views/widgets/atomic/atoms/card_container_atom.dart';
// import 'package:lets_goto_solo/views/widgets/templates/text_app.dart';
// import 'package:lets_goto_solo/views/widgets/templates/vertical_scrollable_app.dart';
// import 'package:optimized_cached_image/optimized_cached_image.dart';
//
// class HCard extends StatelessWidget {
//   final Function onTap;
//   final String title, networkImageUrl;
//   final ImageProvider localImage;
//   final bool isEnableImageNetwork;
//   final double sizeItemHeight;
//   final List<Widget> children;
//
//   const HCard(
//       {Key key,
//       @required this.title,
//       @required this.children,
//       this.onTap,
//       this.sizeItemHeight,
//       this.networkImageUrl: ConstVars.defaultNetImgError,
//       this.localImage,
//       this.isEnableImageNetwork: false})
//       : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     ScrollController _controller = ScrollController();
//     return RelativeBuilder(
//         builder: (context, screenHeight, screenWidth, sy, sx) {
//       return InkWell(
//         onTap: onTap,
//         child: CardContainer(
//           isEnableCustomWidget: true,
//           customWidget: Container(
//               child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               TextApp(
//                 title,
//                 fontSize: sy(14),
//                 textAlign: TextAlign.start,
//                 maxLines: 2,
//                 fontWeight: FontWeight.w800,
//                 overflow: TextOverflow.ellipsis,
//               ),
//               SizedBox(
//                 height: sy(15),
//                 child: Divider(),
//               ),
//               VerticalScrollableApp(
//                   controller: _controller,
//                   height: sy(35),
//                   width: screenWidth,
//                   children: [
//                     Container(
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: children,
//                       ),
//                     ),
//                   ])
//             ],
//           )),
//           image: ShaderMask(
//             shaderCallback: (rect) {
//               return LinearGradient(
//                       colors: [Colors.black, Colors.transparent],
//                       begin: Alignment.centerLeft,
//                       end: Alignment.centerRight)
//                   .createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
//             },
//             blendMode: BlendMode.dstIn,
//             child: (isEnableImageNetwork == false)
//                 ? Image(
//                     image: localImage,
//                     height: sizeItemHeight,
//                   )
//                 : OptimizedCacheImage(
//                     imageUrl: networkImageUrl,
//                     height: sizeItemHeight,
//                     placeholder: (context, url) => Container(
//                       color: Colors.black12,
//                       width: sizeItemHeight,
//                       child: Center(child: CircularProgressIndicator()),
//                     ),
//                     errorWidget: (context, url, error) => Container(
//                       color: Colors.black12,
//                       width: sizeItemHeight,
//                       child: Center(
//                           child: Icon(
//                         Icons.error,
//                         size: sy(60),
//                         color: Colors.red,
//                       )),
//                     ),
//                   ),
//           ),
//           titleTextAlign: TextAlign.start,
//           width: screenWidth * 90 / 100,
//           height: sizeItemHeight,
//         ),
//       );
//     });
//   }
// }
