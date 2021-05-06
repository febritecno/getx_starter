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
