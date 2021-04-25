// import 'package:get/get.dart';
// import 'package:interactive_maps_marker/interactive_maps_marker.dart';
// import 'package:lets_goto_solo/config/helpers/utils/connection_utils.dart';
// import 'package:lets_goto_solo/data/domain/models/peta_model.dart';
// import 'package:lets_goto_solo/data/domain/repository_adapter.dart';
//
// class PetaController extends GetxController {
//   PetaController({this.petaRepository});
//
//   ///*** STATE -------------------
//   // create a reactive state each property data in JSON
//   var petaList = <PetaModel>[].obs;
//   var markerItems = <MarkerItem>[].obs;
//
//   // create a reactive status connection & loading
//   var isConnection = true.obs;
//   var isLoading = true.obs;
//
//   /// inject repo abstraction dependency
//   final IPetaRepository petaRepository;
//
//   @override
//   void onInit() {
//     super.onInit();
//   }
//
//   @override
//   void onReady() {
//     fetchList();
//     super.onReady();
//   }
//
//   Future<void> fetchList() async {
//     try {
//       if (await ConnectionUtils.isNetworkConnected()) {
//         isConnection(true);
//         isLoading(true);
//         await petaRepository.getPetaList().then((value) {
//           if (petaList.isNotEmpty || petaList.length != null) {
//             petaList.assignAll(value);
//             value.forEach((el) {
//               markerItems.add(MarkerItem(
//                   id: el.id,
//                   latitude: double.parse(el.lat),
//                   longitude: double.parse(el.long)));
//             });
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
// class PetaDetailController extends GetxController {
//   ///*** STATE -------------------
//   var title = Get.arguments['title'];
//   var content = Get.arguments['content_post'];
//   var thumbnail = Get.arguments['thumbnail'];
//   var lat = Get.arguments['lat'];
//   var long = Get.arguments['long'];
//   var location = Get.arguments['location'];
//   var averageRating = Get.arguments['average_rating'];
//
//   @override
//   void onInit() {
//     super.onInit();
//   }
// }
