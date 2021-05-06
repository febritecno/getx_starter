// class PetaPage extends GetView<PetaController> {
//   PetaPage({Key key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return RelativeBuilder(
//         builder: (context, screenHeight, screenWidth, sy, sx) {
//       final sizeThumbImage = sy(100);
//       return Scaffold(
//           appBar: AppBar(title: Text("peta_menu".tr)),
//           body: Obx(() {
//             if (controller.isLoading.value) {
//               return Loading(sizeHeight: screenHeight * 80 / 100);
//             } else {
//               return InteractiveMapsMarker(
//                 itemHeight: sy(100),
//                 items: controller.markerItems,
//                 center: LatLng(ConstVars.defaultCenterLatLongPeta[0],
//                     ConstVars.defaultCenterLatLongPeta[1]),
//                 zoom: 10,
//                 itemContent: (context, index) {
//                   return InkWell(
//                     onTap: () => {
//                       Get.toNamed(Routes.DETAIL_PETA, arguments: {
//                         'thumbnail': controller.petaList[index].thumbnail ?? "",
//                         'title': controller.petaList[index].title ?? "",
//                         'location': controller.petaList[index].location ?? "",
//                         'lat': controller.petaList[index].lat ?? "",
//                         'long': controller.petaList[index].long,
//                         'average_rating' ?? "":
//                             controller.petaList[index].averageRating,
//                         'content_post' ?? "":
//                             controller.petaList[index].contentPost ?? "",
//                       })
//                     },
//                     child: CardContainer(
//                       isEnableCustomWidget: true,
//                       width: screenWidth,
//                       //* make gradient transparent with SharderMask ********
//                       image: OptimizedCacheImage(
//                         imageUrl: controller.petaList[index].thumbnail,
//                         height: sizeThumbImage,
//                         placeholder: (context, url) => Container(
//                           color: Colors.black12,
//                           width: sizeThumbImage,
//                           child: Center(child: CircularProgressIndicator()),
//                         ),
//                         errorWidget: (context, url, error) => Container(
//                           color: Colors.black12,
//                           width: sizeThumbImage,
//                           child: Center(
//                               child: Icon(
//                             Icons.error,
//                             size: sy(60),
//                             color: Colors.white,
//                           )),
//                         ),
//                       ),
//                       customWidget: Padding(
//                         padding: EdgeInsets.only(bottom: sy(6), left: sx(6)),
//                         child: VerticalScrollableApp(
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           height: sy(100),
//                           children: [
//                             TextApp(
//                               controller.petaList[index].title,
//                               fontSize: sy(14),
//                               maxLines: 2,
//                               fontWeight: FontWeight.w900,
//                             ),
//                             SizedBox(
//                               height: sy(4),
//                             ),
//                             SmoothStarRating(
//                               size: sy(14),
//                               allowHalfRating: false,
//                               rating: controller.petaList[index].averageRating,
//                               isReadOnly: true,
//                             ),
//                             Divider(),
//                             TextApp(
//                               controller.petaList[index].location,
//                               fontSize: sy(10),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   );
//                 },
//               );
//             }
//           }));
//     });
//   }
// }
