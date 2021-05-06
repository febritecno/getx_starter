// class EkrafDetailScreen extends GetView<EkrafDetailController> {
//   @override
//   Widget build(BuildContext context) {
//     return RelativeBuilder(
//         builder: (context, screenHeight, screenWidth, sy, sx) {
//       return Obx(() {
//         if (controller.isLoading.value ||
//             controller.dataDetail.value.id == null) {
//           return Loading(sizeHeight: screenHeight * 50 / 100);
//         } else {
//           return DetailPostScreen(
//             thumbImageUrl: controller.dataDetail.value.thumbnail,
//             title: controller.dataDetail.value.title,
//             valueRating: controller.dataDetail.value.averageRating,
//             lat: controller.dataDetail.value.lat,
//             long: controller.dataDetail.value.long,
//             textCategoryValue: controller.dataDetail.value.category,
//             textSubCategoryValue: controller.dataDetail.value.subCategory,
//             textLocationValue: controller.dataDetail.value.location,
//             contentPost: controller.dataDetail.value.contentPost,
//             listGalleryItemBuilder: ListView.builder(
//               scrollDirection: Axis.horizontal,
//               physics: BouncingScrollPhysics(),
//               itemCount: controller.imageDetailList.length,
//               itemBuilder: (BuildContext context, int index) {
//                 return GalleryItem(
//                   imageUrl: controller.imageDetailList[index].thumbnail,
//                   onTap: () {
//                     Get.to(PreviewImgDisplay(
//                       urlImage: controller.imageDetailList[index].thumbnail,
//                     ));
//                   },
//                 );
//               },
//             ),
//             listRatingItemBuilder: ListView.builder(
//               physics: BouncingScrollPhysics(),
//               padding: EdgeInsets.only(top: sy(5)),
//               itemCount: controller.ratingDetailList.length,
//               itemBuilder: (BuildContext context, int index) {
//                 return RateCommentsContainer(
//                   commentName: controller.ratingDetailList[index].nama,
//                   commentText: controller.ratingDetailList[index].comment,
//                   valueRating: controller.ratingDetailList[index].jumlahRating,
//                 );
//               },
//             ),
//             countRatingList: controller.ratingDetailList.length,
//             addRateWidget: AddRateBtn(
//               starRatingValue: (val) {
//                 controller.dataRating.value.jumlahRating = val;
//               },
//               nameValue: (val) {
//                 controller.dataRating.value.nama = val;
//               },
//               commentValue: (val) {
//                 controller.dataRating.value.comment = val;
//               },
//               onSubmit: () async {
//                 if (controller.dataRating.value.nama != null &&
//                     controller.dataRating.value.comment != null &&
//                     controller.dataRating.value.jumlahRating != null) {
//                   final response = await controller.ekrafRepository.postRating(
//                       controller.idItem,
//                       controller.dataRating.value.nama.capitalize,
//                       controller.dataRating.value.comment.capitalize,
//                       controller.dataRating.value.jumlahRating);
//                   if (response.data['success'] == true) {
//                     Get.back();
//                     AppSnackBar.success(ConstVars.msgReviewSuccess.tr);
//                     controller.dataInputRatingNull();
//                     controller.reloadDetail(controller.idItem.toString());
//                   } else {
//                     Get.back();
//                     controller.dataInputRatingNull();
//                     AppSnackBar.error(ConstVars.msgReviewError.tr);
//                   }
//                 } else {
//                   AppSnackBar.error(ConstVars.msgInputReviewNullError.tr);
//                 }
//               },
//               onCancel: () {
//                 controller.dataInputRatingNull();
//                 Get.back();
//               },
//             ),
//           );
//         }
//       });
//     });
//   }
// }
