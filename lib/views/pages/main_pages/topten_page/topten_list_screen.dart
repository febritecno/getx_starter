// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:lets_goto_solo/config/constants/constants.dart';
// import 'package:lets_goto_solo/controllers/main_controllers/topten_controller.dart';
// import 'package:lets_goto_solo/routes/app_routes.dart';
// import 'package:lets_goto_solo/views/widgets/atomic/molecules/submenu_vertical_card_mol.dart';
// import 'package:lets_goto_solo/views/widgets/atomic/organisms/list_item_display_org.dart';
//
// class TopTenListScreen extends GetView<TopTenListController> {
//   TopTenListScreen({Key key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return ListItemDisplay(
//       title: controller.nameCategories,
//       children: [
//         Obx(() => Container(
//               height: ConstFunctions.listViewHeight(context),
//               width: ConstFunctions.listViewWidth(context),
//               child: ListView.builder(
//                 itemCount: controller.dataSubCategory.length,
//                 padding: EdgeInsets.all(0),
//                 physics: BouncingScrollPhysics(),
//                 itemBuilder: (BuildContext context, int index) {
//                   return SMVCard(
//                     title: controller.dataSubCategory[index].nameSubCategories,
//                     isEnableLocalImage: false,
//                     networkImageUrl: controller
//                         .dataSubCategory[index].thumbnailSubCategories,
//                     onTap: () => {
//                       Get.toNamed(Routes.LIST_DETAIL_TOPTEN, arguments: {
//                         'id': controller.dataSubCategory[index].idSubCategories,
//                         'sub_menu':
//                             controller.dataSubCategory[index].nameSubCategories
//                       })
//                     },
//                   );
//                 },
//               ),
//             ))
//       ],
//     );
//   }
// }
