// import 'package:expandable/expandable.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:lets_goto_solo/config/constants/constants.dart';
// import 'package:lets_goto_solo/config/helpers/third_party/relative_scale.dart';
// import 'package:lets_goto_solo/controllers/main_controllers/topten_controller.dart';
// import 'package:lets_goto_solo/views/widgets/atomic/atoms/loading_atom.dart';
// import 'package:lets_goto_solo/views/widgets/atomic/atoms/netcache_image_atom.dart';
// import 'package:lets_goto_solo/views/widgets/atomic/molecules/detail_screen_molecules/Icon_detail_mol.dart';
// import 'package:lets_goto_solo/views/widgets/atomic/organisms/list_item_display_org.dart';
// import 'package:lets_goto_solo/views/widgets/templates/text_app.dart';
// import 'package:smooth_star_rating/smooth_star_rating.dart';
// import 'package:unicons/unicons.dart';
//
// class TopTenListDetailScreen extends GetView<TopTenListDetailController> {
//   TopTenListDetailScreen({Key key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return RelativeBuilder(
//         builder: (context, screenHeight, screenWidth, sy, sx) {
//       return ListItemDisplay(
//         title: controller.nameSubMenu,
//         children: [
//           Obx(() => (controller.isLoading.value)
//               ? Loading(
//                   sizeHeight: screenHeight * 50 / 100,
//                 )
//               : Container(
//                   height: ConstFunctions.listViewHeight(context),
//                   width: ConstFunctions.listViewWidth(context),
//                   child: ListView.builder(
//                     itemCount: controller.dataTopTenDetail.length,
//                     padding: EdgeInsets.all(0),
//                     physics: BouncingScrollPhysics(),
//                     itemBuilder: (BuildContext context, int index) {
//                       return ExpandableNotifier(
//                         child: Column(
//                           children: [
//                             Expandable(
//                               collapsed: ExpandableButton(
//                                 child: Card(
//                                   child: Column(
//                                     children: [
//                                       NetImageFullWidth(
//                                         height: sy(100),
//                                         networkImageUrl: controller
//                                             .dataTopTenDetail[index].thumbnail,
//                                       ),
//                                       Padding(
//                                         padding: EdgeInsets.all(sy(20)),
//                                         child: Column(
//                                           mainAxisAlignment:
//                                               MainAxisAlignment.start,
//                                           crossAxisAlignment:
//                                               CrossAxisAlignment.start,
//                                           children: [
//                                             TextApp(
//                                               controller.dataTopTenDetail[index]
//                                                   .title,
//                                               textAlign: TextAlign.start,
//                                               maxLines: 2,
//                                               fontSize: sy(16),
//                                               fontWeight: FontWeight.bold,
//                                             ),
//                                             SizedBox(
//                                               height: sy(4),
//                                             ),
//                                             SmoothStarRating(
//                                               rating: controller
//                                                   .dataTopTenDetail[index]
//                                                   .averageRating,
//                                               isReadOnly: true,
//                                               color: Colors.green,
//                                               size: sy(14),
//                                             )
//                                           ],
//                                         ),
//                                       )
//                                     ],
//                                     mainAxisAlignment: MainAxisAlignment.start,
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                   ),
//                                   color: Colors.white,
//                                 ),
//                               ),
//                               expanded: Card(
//                                 child: Column(
//                                   children: [
//                                     NetImageFullWidth(
//                                       height: sy(180),
//                                       networkImageUrl: controller
//                                           .dataTopTenDetail[index].thumbnail,
//                                     ),
//                                     Padding(
//                                       padding: EdgeInsets.all(sy(20)),
//                                       child: Column(
//                                         mainAxisAlignment:
//                                             MainAxisAlignment.start,
//                                         crossAxisAlignment:
//                                             CrossAxisAlignment.start,
//                                         children: [
//                                           TextApp(
//                                             controller
//                                                 .dataTopTenDetail[index].title,
//                                             textAlign: TextAlign.start,
//                                             maxLines: 2,
//                                             fontSize: sy(16),
//                                             fontWeight: FontWeight.bold,
//                                           ),
//                                           SizedBox(
//                                             height: sy(4),
//                                           ),
//                                           SmoothStarRating(
//                                             rating: controller
//                                                 .dataTopTenDetail[index]
//                                                 .averageRating,
//                                             isReadOnly: true,
//                                             color: Colors.green,
//                                             size: sy(14),
//                                           ),
//                                           SizedBox(
//                                             height: sy(4),
//                                           ),
//                                           Divider(),
//                                           SizedBox(
//                                             height: sy(12),
//                                           ),
//                                           Column(
//                                             children: [
//                                               IconDetail(
//                                                   icon: UniconsLine.users_alt,
//                                                   text: "count_rating".tr +
//                                                       " : " +
//                                                       (controller
//                                                               .dataTopTenDetail[
//                                                                   index]
//                                                               .jumlahRating
//                                                               .toInt())
//                                                           .toString()),
//                                               IconDetail(
//                                                   icon: UniconsLine.bookmark,
//                                                   text: "category".tr +
//                                                       " : " +
//                                                       controller
//                                                           .dataTopTenDetail[
//                                                               index]
//                                                           .category),
//                                               IconDetail(
//                                                   icon: UniconsLine
//                                                       .file_bookmark_alt,
//                                                   text: "sub_category".tr +
//                                                       " : " +
//                                                       controller
//                                                           .dataTopTenDetail[
//                                                               index]
//                                                           .subCategory),
//                                             ],
//                                           ),
//                                           SizedBox(
//                                             height: sy(24),
//                                           ),
//                                           Center(
//                                             child: ExpandableButton(
//                                                 child: Icon(Icons
//                                                     .arrow_circle_up_sharp)),
//                                           )
//                                         ],
//                                       ),
//                                     ),
//                                   ],
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                 ),
//                                 color: Colors.white,
//                               ),
//                             ),
//                             Divider()
//                           ],
//                         ),
//                       );
//                     },
//                   ),
//                 ))
//         ],
//       );
//     });
//   }
// }
