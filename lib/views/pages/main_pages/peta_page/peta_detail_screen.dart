// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:lets_goto_solo/config/helpers/third_party/relative_scale.dart';
// import 'package:lets_goto_solo/controllers/main_controllers/peta_controller.dart';
// import 'package:lets_goto_solo/views/widgets/atomic/molecules/detail_screen_molecules/Icon_detail_mol.dart';
// import 'package:lets_goto_solo/views/widgets/atomic/molecules/detail_screen_molecules/desc_container_mol.dart';
// import 'package:lets_goto_solo/views/widgets/atomic/molecules/detail_screen_molecules/title_subtitle_mol.dart';
// import 'package:lets_goto_solo/views/widgets/atomic/organisms/detail_post_display_org.dart';
// import 'package:lets_goto_solo/views/widgets/templates/vertical_scrollable_app.dart';
// import 'package:map_launcher/map_launcher.dart';
// import 'package:unicons/unicons.dart';
//
// class PetaDetailScreen extends GetView<PetaDetailController> {
//   @override
//   Widget build(BuildContext context) {
//     return RelativeBuilder(
//         builder: (context, screenHeight, screenWidth, sy, sx) {
//       return DetailPostDisplay(
//         networkImageUrl: controller.thumbnail,
//         children: [
//           VerticalScrollableApp(
//               width: screenWidth,
//               height: screenHeight - sy(200),
//               children: [
//                 Container(
//                   padding: EdgeInsets.only(right: sx(30), left: sx(30)),
//                   child: Column(
//                     children: [
//                       HeaderTitleRate(
//                         onTapBtn: () async {
//                           final availableMaps = await MapLauncher.installedMaps;
//                           await availableMaps.first.showMarker(
//                             coords: Coords(double.parse(controller.lat),
//                                 double.parse(controller.long)),
//                             title: controller.title,
//                           );
//                         },
//                         title: controller.title,
//                         valueRating: controller.averageRating,
//                       ),
//                       SizedBox(height: sy(45)),
//                       SubTitle(
//                         textSubtitle: "location".tr,
//                         child: Column(
//                           children: [
//                             IconDetail(
//                               text: controller.location,
//                               icon: UniconsLine.location_point,
//                             ),
//                           ],
//                         ),
//                       ),
//                       SizedBox(height: sy(25)),
//                       DetailContainer(
//                         title: "description".tr,
//                         htmlText: controller.content,
//                       ),
//                       SizedBox(height: sy(45)),
//                     ],
//                   ),
//                 ),
//               ])
//         ],
//       );
//     });
//   }
// }
