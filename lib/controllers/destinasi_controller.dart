// import 'package:get/get.dart';
// import 'package:lets_goto_solo/config/helpers/utils/connection_utils.dart';
// import 'package:lets_goto_solo/data/domain/repository_adapter.dart';
// import 'package:lets_goto_solo/data/domain/shared_models.dart';
//
// class DestinasiController extends GetxController {
//   DestinasiController({this.destinasiRepository});
//
//   ///*** STATE -------------------
//   // create a reactive state each property data in JSON
//   var subMenuList = <SubMenuModel>[].obs;
//
//   // create a reactive status connection & loading
//   var isConnection = true.obs;
//   var isLoading = true.obs;
//
//   /// inject repo abstraction dependency
//   final IDestinasiRepository destinasiRepository;
//
//   @override
//   void onInit() {
//     super.onInit();
//   }
//
//   @override
//   void onReady() {
//     fetchListSubMenu();
//     super.onReady();
//   }
//
//   Future<void> fetchListSubMenu() async {
//     try {
//       if (await ConnectionUtils.isNetworkConnected()) {
//         isConnection(true);
//         isLoading(true);
//         await destinasiRepository.getDestinasiSubMenuList().then((value) {
//           if (subMenuList.isNotEmpty || subMenuList.length != null) {
//             subMenuList.assignAll(value);
//           }
//         });
//       } else {
//         isConnection(false);
//       }
//     } catch (e) {
//       isLoading(true);
//     } finally {
//       isLoading(false);
//     }
//   }
// }
//
// class DestinasiListController extends GetxController {
//   DestinasiListController({this.destinasiRepository});
//
//   /// inject repo abstraction dependency
//   final IDestinasiRepository destinasiRepository;
//
//   final int idSubMenu = Get.arguments['id'];
//   final String nameSubMenu = Get.arguments['sub_menu'];
//
//   ///*** STATE -------------------
//   var destinasiListItem = <ListItemModel>[].obs;
//
//   // create a reactive state for status loading
//   var isLoading = true.obs;
//
//   @override
//   void onInit() {
//     super.onInit();
//   }
//
//   @override
//   void onReady() {
//     fetchListItem(idSubMenu.toString());
//     super.onReady();
//   }
//
//   Future<void> fetchListItem(String id) async {
//     try {
//       isLoading(true);
//       await destinasiRepository.getDestinasiListItem(id).then((value) {
//         //select result return data based on type data `Map`
//         destinasiListItem(value);
//       });
//     } catch (e) {
//       isLoading(true);
//     } finally {
//       isLoading(false);
//     }
//   }
// }
//
// class DestinasiDetailController extends GetxController {
//   DestinasiDetailController({this.destinasiRepository});
//
//   /// inject repo abstraction dependency
//   final IDestinasiRepository destinasiRepository;
//
//   /// Get `id` for get detail
//   final int idItem = Get.arguments['id'];
//
//   ///*** STATE -------------------
//   // create a reactive state each property data in JSON
//   var ratingDetailList = <DetailRatingModel>[].obs;
//   var imageDetailList = <DetailImageModel>[].obs;
//   var dataDetail = DetailPostModel().obs;
//   var dataRating = DetailRatingModel().obs;
//
//   // create a reactive state for status loading
//
//   var isLoading = true.obs;
//
//   @override
//   void onInit() {
//     super.onInit();
//   }
//
//   @override
//   void onReady() {
//     fetchDetail(idItem.toString());
//     super.onReady();
//   }
//
//   Future<void> fetchDetail(String id) async {
//     try {
//       isLoading(true);
//       await destinasiRepository.getDestinasiDetail(id).then((value) {
//         //select result return data based on type data `Map`
//         dataDetail(value['data']);
//         imageDetailList.assignAll(value['image']);
//         ratingDetailList.assignAll(value['rating']);
//       });
//     } catch (e) {
//       isLoading(true);
//     } finally {
//       isLoading(false);
//     }
//   }
//
//   Future<void> postRating(id, name, comment, rating) async {
//     await destinasiRepository.postRating(id, name, comment, rating);
//   }
//
//   Future<void> reloadDetail(String id) async {
//     await destinasiRepository.getDestinasiDetail(id).then((value) {
//       dataDetail(value['data']);
//       imageDetailList.assignAll(value['image']);
//       ratingDetailList.assignAll(value['rating']);
//     });
//   }
//
//   void dataInputRatingNull() {
//     dataRating.value.nama = null;
//     dataRating.value.comment = null;
//     dataRating.value.jumlahRating = null;
//   }
// }
