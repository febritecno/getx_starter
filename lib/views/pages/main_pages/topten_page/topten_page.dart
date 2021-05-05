// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:lets_goto_solo/config/constants/app_constants.dart';
// import 'package:lets_goto_solo/config/helpers/third_party/relative_scale.dart';
// import 'package:lets_goto_solo/controllers/main_controllers/topten_controller.dart';
// import 'package:lets_goto_solo/routes/app_routes.dart';
// import 'package:lets_goto_solo/views/widgets/atomic/atoms/loading_atom.dart';
// import 'package:lets_goto_solo/views/widgets/atomic/molecules/submenu_vertical_card_mol.dart';
// import 'package:lets_goto_solo/views/widgets/atomic/organisms/list_item_display_org.dart';
// import 'package:lets_goto_solo/views/widgets/templates/not_found_app.dart';
//
// class ToptenPage extends GetView<TopTenController> {
//   ToptenPage({Key key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return RelativeBuilder(
//         builder: (context, screenHeight, screenWidth, sy, sx) {
//       return ListItemDisplay(
//         title: "topten_menu".tr,
//         children: [
//           Obx(
//             () => (controller.isLoading.value)
//                 ? Loading(sizeHeight: screenHeight * 50 / 100)
//                 : (controller.dataTopTenList.isEmpty)
//                     ? NotFoundApp()
//                     : Container(
//                         height: ConstFunctions.listViewHeight(context),
//                         width: ConstFunctions.listViewWidth(context),
//                         child: ListView.builder(
//                             padding: EdgeInsets.all(0),
//                             physics: BouncingScrollPhysics(),
//                             itemCount: controller.dataTopTenList.length,
//                             itemBuilder: (BuildContext context, index) {
//                               return SMVCard(
//                                 title:
//                                     controller.dataTopTenList[index].categories,
//                                 isEnableLocalImage: false,
//                                 networkImageUrl:
//                                     controller.dataTopTenList[index].thumbnail,
//                                 onTap: () => {
//                                   Get.toNamed(Routes.LIST_TOPTEN, arguments: {
//                                     "name_categories": controller
//                                         .dataTopTenList[index].categories,
//                                     "sub_categories": controller
//                                         .dataTopTenList[index].subCategories
//                                   })
//                                 },
//                               );
//                             }),
//                       ),
//           )
//         ],
//       );
//     });
//   }
// }
