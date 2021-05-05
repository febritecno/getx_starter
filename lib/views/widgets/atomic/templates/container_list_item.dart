// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:lets_goto_solo/config/constants/app_constants.dart';
// import 'package:lets_goto_solo/config/helpers/helpers.dart';
// import 'package:lets_goto_solo/config/helpers/third_party/relative_scale.dart';
// import 'package:lets_goto_solo/views/widgets/atomic/molecules/detail_screen_molecules/Icon_detail_mol.dart';
// import 'package:lets_goto_solo/views/widgets/templates/text_app.dart';
// import 'package:lets_goto_solo/views/widgets/templates/vertical_scrollable_app.dart';
// import 'package:unicons/unicons.dart';
//
// class ContainerListItem extends StatelessWidget {
//   final String title, phone, location;
//   final List<String> latLong;
//
//   const ContainerListItem(
//       {Key key, this.title, this.phone, this.latLong, this.location})
//       : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return RelativeBuilder(
//         builder: (context, screenHeight, screenWidth, sy, sx) {
//       return VerticalScrollableApp(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         height: sy(66),
//         children: [
//           TextApp(
//             title,
//             fontSize: sy(ConstVars.defaultHeaderVCard),
//             fontWeight: FontWeight.w800,
//             maxLines: 1,
//           ),
//           Divider(),
//           SizedBox(height: sy(3)),
//           InkWell(
//             onTap: () {
//               Helpers.popUpDirectContact(context, phone);
//             },
//             child: Column(
//               children: [
//                 IconDetail(
//                     fontWeight: FontWeight.bold,
//                     icon: UniconsLine.phone,
//                     fontSize: sy(ConstVars.defaultDescVCard),
//                     iconSize: sy(ConstVars.defaultDescVCard),
//                     text: phone),
//                 IconDetail(
//                     icon: UniconsLine.directions,
//                     fontSize: sy(ConstVars.defaultDescVCard),
//                     iconSize: sy(ConstVars.defaultDescVCard),
//                     text: latLong[0] + ", " + latLong[1]),
//               ],
//             ),
//           ),
//           SizedBox(height: sy(14)),
//           Container(
//             height: sy(40),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 TextApp(
//                   location,
//                   fontSize: sy(10),
//                   maxLines: 4,
//                   overflow: TextOverflow.ellipsis,
//                 )
//               ],
//             ),
//           ),
//           SizedBox(height: sy(18)),
//         ],
//       );
//     });
//   }
// }
