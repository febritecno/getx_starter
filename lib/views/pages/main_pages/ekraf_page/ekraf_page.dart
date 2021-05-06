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
