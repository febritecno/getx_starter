// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:lets_goto_solo/config/helpers/third_party/relative_scale.dart';
// import 'package:lets_goto_solo/controllers/main_controllers/ekraf_controller.dart';
// import 'package:lets_goto_solo/routes/app_routes.dart';
// import 'package:lets_goto_solo/views/widgets/atomic/atoms/card_carousel_slider_atom.dart';
// import 'package:lets_goto_solo/views/widgets/atomic/atoms/loading_atom.dart';
// import 'package:lets_goto_solo/views/widgets/atomic/molecules/detail_screen_molecules/Icon_detail_mol.dart';
// import 'package:lets_goto_solo/views/widgets/atomic/organisms/list_item_display_org.dart';
// import 'package:lets_goto_solo/views/widgets/templates/not_found_app.dart';
// import 'package:smooth_star_rating/smooth_star_rating.dart';
// import 'package:unicons/unicons.dart';
//
// class EkrafPage extends GetView<EkrafController> {
//   Widget build(BuildContext context) {
//     return RelativeBuilder(
//         builder: (context, screenHeight, screenWidth, sy, sx) {
//       return ListItemDisplay(
//         title: "ekraf_menu".tr,
//         children: [
//           SizedBox(height: sy(10)),
//           Obx(() => (controller.isLoading.value)
//               ? Loading(
//                   sizeHeight: screenHeight * 50 / 100,
//                 )
//               : (controller.ekrafList.isEmpty)
//                   ? NotFoundApp()
//                   : CarouselSlider.builder(
//                       options: CarouselOptions(
//                         height: sy(380),
//                         autoPlayCurve: Curves.fastLinearToSlowEaseIn,
//                         enableInfiniteScroll: true,
//                         enlargeCenterPage: false,
//                         scrollPhysics: BouncingScrollPhysics(),
//                       ),
//                       itemCount: controller.ekrafList.length,
//                       itemBuilder:
//                           (BuildContext context, int index, int realIndex) {
//                         return CarouselSliderCard(
//                           networkImgUrl: controller.ekrafList[index].thumbnail,
//                           headerTitle: controller.ekrafList[index].title,
//                           children: [
//                             Center(
//                               child: SmoothStarRating(
//                                 size: sy(15),
//                                 allowHalfRating: false,
//                                 rating:
//                                     controller.ekrafList[index].averageRating,
//                                 isReadOnly: true,
//                               ),
//                             ),
//                             SizedBox(height: sy(22)),
//                             Column(
//                               children: [
//                                 IconDetail(
//                                   text: controller.ekrafList[index].location,
//                                   icon: UniconsLine.location_point,
//                                 ),
//                                 IconDetail(
//                                   text: controller.ekrafList[index].noTelp,
//                                   icon: UniconsLine.phone_alt,
//                                 ),
//                                 IconDetail(
//                                   text: controller.ekrafList[index].lat +
//                                       ", " +
//                                       controller.ekrafList[index].long,
//                                   icon: UniconsLine.directions,
//                                 ),
//                               ],
//                             ),
//                           ],
//                           onTap: () => {
//                             Get.toNamed(Routes.DETAIL_EKRAF, arguments: {
//                               "id": controller.ekrafList[index].id
//                             })
//                           },
//                         );
//                       },
//                     ))
//         ],
//       );
//     });
//   }
// }
