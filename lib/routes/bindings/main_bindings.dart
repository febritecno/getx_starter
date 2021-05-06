part of 'app_bindings.dart';

// import 'package:dio/dio.dart';
// import 'package:get/get.dart';
// import 'package:lets_goto_solo/config/services/api_client/api_client.dart';
// import 'package:lets_goto_solo/controllers/home_controller.dart';
// import 'package:lets_goto_solo/controllers/main_controllers/destinasi_controller.dart';
// import 'package:lets_goto_solo/controllers/main_controllers/ekraf_controller.dart';
// import 'package:lets_goto_solo/controllers/main_controllers/event_controller.dart';
// import 'package:lets_goto_solo/controllers/main_controllers/informasi_controller.dart';
// import 'package:lets_goto_solo/controllers/main_controllers/peta_controller.dart';
// import 'package:lets_goto_solo/controllers/main_controllers/sarana_controller.dart';
// import 'package:lets_goto_solo/controllers/main_controllers/topten_controller.dart';
// import 'package:lets_goto_solo/controllers/main_controllers/transportasi_controller.dart';
// import 'package:lets_goto_solo/data/domain/base_repository_adapter.dart';
// import 'package:lets_goto_solo/data/network/base_api_services/destinasi_repository.dart';
// import 'package:lets_goto_solo/data/network/base_api_services/ekraf_repository.dart';
// import 'package:lets_goto_solo/data/network/base_api_services/event_repository.dart';
// import 'package:lets_goto_solo/data/network/base_api_services/home_repository.dart';
// import 'package:lets_goto_solo/data/network/base_api_services/informasi_repository.dart';
// import 'package:lets_goto_solo/data/network/base_api_services/peta_repository.dart';
// import 'package:lets_goto_solo/data/network/base_api_services/sarana_repository.dart';
// import 'package:lets_goto_solo/data/network/base_api_services/topten_repository.dart';
// import 'package:lets_goto_solo/data/network/base_api_services/transportasi_repository.dart';
//
// //*** Home Page -------------------1
// class HomeBinding extends Bindings {
//   @override
//   void dependencies() {
//     Get.lazyPut(() => ApiClient(Dio()));
//     Get.lazyPut<IHomeRepository>(() => HomeRepository(apiClient: Get.find()));
//     Get.lazyPut(() => HomeController(homeRepository: Get.find()));
//   }
// }
//
// //*** Peta Page -------------------2
// class PetaBinding extends Bindings {
//   @override
//   void dependencies() {
//     Get.lazyPut(() => ApiClient(Dio()));
//     Get.lazyPut<IPetaRepository>(() => PetaRepository(apiClient: Get.find()));
//     Get.lazyPut(() => PetaController(petaRepository: Get.find()));
//   }
// }
//
// class PetaDetailBinding extends Bindings {
//   @override
//   void dependencies() {
//     Get.lazyPut(() => PetaDetailController());
//   }
// }
//
// //*** Destinasi Page -------------------3
// class DestinasiBinding extends Bindings {
//   @override
//   void dependencies() {
//     Get.lazyPut(() => ApiClient(Dio()));
//     Get.lazyPut<IDestinasiRepository>(
//         () => DestinasiRepository(apiClient: Get.find()));
//     Get.lazyPut(() => DestinasiController(destinasiRepository: Get.find()));
//   }
// }
//
// class DestinasiListBinding extends Bindings {
//   @override
//   void dependencies() {
//     Get.lazyPut(() => ApiClient(Dio()));
//     Get.lazyPut<IDestinasiRepository>(
//         () => DestinasiRepository(apiClient: Get.find()));
//     Get.lazyPut(() => DestinasiListController(destinasiRepository: Get.find()));
//   }
// }
//
// class DestinasiDetailBinding extends Bindings {
//   @override
//   void dependencies() {
//     Get.lazyPut(() => ApiClient(Dio()));
//     Get.lazyPut<IDestinasiRepository>(
//         () => DestinasiRepository(apiClient: Get.find()));
//     Get.lazyPut(
//         () => DestinasiDetailController(destinasiRepository: Get.find()));
//   }
// }
//
// //*** Informasi Page -------------------4
// class InformasiBinding extends Bindings {
//   @override
//   void dependencies() {
//     Get.lazyPut(() => ApiClient(Dio()));
//     Get.lazyPut<IInformasiRepository>(
//         () => InformasiRepository(apiClient: Get.find()));
//     Get.lazyPut(() => InformasiController(informasiRepository: Get.find()));
//   }
// }
//
// class InformasiListBinding extends Bindings {
//   @override
//   void dependencies() {
//     Get.lazyPut(() => ApiClient(Dio()));
//     Get.lazyPut<IInformasiRepository>(
//         () => InformasiRepository(apiClient: Get.find()));
//     Get.lazyPut(() => InformasiListController(informasiRepository: Get.find()));
//   }
// }
//
// class InformasiDetailBinding extends Bindings {
//   @override
//   void dependencies() {
//     Get.lazyPut(() => ApiClient(Dio()));
//     Get.lazyPut<IInformasiRepository>(
//         () => InformasiRepository(apiClient: Get.find()));
//     Get.lazyPut(
//         () => InformasiDetailController(informasiRepository: Get.find()));
//   }
// }
//
// //*** Sarana Page -------------------5
// class SaranaBinding extends Bindings {
//   @override
//   void dependencies() {
//     Get.lazyPut(() => ApiClient(Dio()));
//     Get.lazyPut<ISaranaRepository>(
//         () => SaranaRepository(apiClient: Get.find()));
//     Get.lazyPut(() => SaranaController(saranaRepository: Get.find()));
//   }
// }
//
// class SaranaListBinding extends Bindings {
//   @override
//   void dependencies() {
//     Get.lazyPut(() => ApiClient(Dio()));
//     Get.lazyPut<ISaranaRepository>(
//         () => SaranaRepository(apiClient: Get.find()));
//     Get.lazyPut(() => SaranaListController(saranaRepository: Get.find()));
//   }
// }
//
// class SaranaDetailBinding extends Bindings {
//   @override
//   void dependencies() {
//     Get.lazyPut(() => ApiClient(Dio()));
//     Get.lazyPut<ISaranaRepository>(
//         () => SaranaRepository(apiClient: Get.find()));
//     Get.lazyPut(() => SaranaDetailController(saranaRepository: Get.find()));
//   }
// }
//
// //*** Event Page -------------------6
// class EventBinding extends Bindings {
//   @override
//   void dependencies() {
//     Get.lazyPut(() => ApiClient(Dio()));
//     Get.lazyPut<IEventRepository>(() => EventRepository(apiClient: Get.find()));
//     Get.lazyPut(() => EventController(eventRepository: Get.find()));
//   }
// }
//
// class EventDetailBinding extends Bindings {
//   @override
//   void dependencies() {
//     Get.lazyPut(() => ApiClient(Dio()));
//     Get.lazyPut<IEventRepository>(() => EventRepository(apiClient: Get.find()));
//     Get.lazyPut(() => EventDetailController(eventRepository: Get.find()));
//   }
// }
//
// //*** TopTen Page -------------------7
// class TopTenBinding extends Bindings {
//   @override
//   void dependencies() {
//     Get.lazyPut(() => ApiClient(Dio()));
//     Get.lazyPut<ITopTenRepository>(
//         () => TopTenRepository(apiClient: Get.find()));
//     Get.lazyPut(() => TopTenController(topTenRepository: Get.find()));
//   }
// }
//
// class TopTenListBinding extends Bindings {
//   @override
//   void dependencies() {
//     Get.lazyPut(() => TopTenListController());
//   }
// }
//
// class TopTenListDetailBinding extends Bindings {
//   @override
//   void dependencies() {
//     Get.lazyPut(() => ApiClient(Dio()));
//     Get.lazyPut<ITopTenRepository>(
//         () => TopTenRepository(apiClient: Get.find()));
//     Get.lazyPut(() => TopTenListDetailController(topTenRepository: Get.find()));
//   }
// }
//
// //*** Transportasi Page -------------------8
// class TransportasiBinding extends Bindings {
//   @override
//   void dependencies() {
//     Get.lazyPut(() => ApiClient(Dio()));
//     Get.lazyPut<ITransportasiRepository>(
//         () => TransportasiRepository(apiClient: Get.find()));
//     Get.lazyPut(
//         () => TransportasiController(transportasiRepository: Get.find()));
//   }
// }
//
// class TransportasiListBinding extends Bindings {
//   @override
//   void dependencies() {
//     Get.lazyPut(() => ApiClient(Dio()));
//     Get.lazyPut<ITransportasiRepository>(
//         () => TransportasiRepository(apiClient: Get.find()));
//     Get.lazyPut(
//         () => TransportasiListController(transportasiRepository: Get.find()));
//   }
// }
//
// class TransportasiDetailBinding extends Bindings {
//   @override
//   void dependencies() {
//     Get.lazyPut(() => ApiClient(Dio()));
//     Get.lazyPut<ITransportasiRepository>(
//         () => TransportasiRepository(apiClient: Get.find()));
//     Get.lazyPut(
//         () => TransportasiDetailController(transportasiRepository: Get.find()));
//   }
// }
//
// //*** Ekraf Page -------------------9
// class EkrafBinding extends Bindings {
//   @override
//   void dependencies() {
//     Get.lazyPut(() => ApiClient(Dio()));
//     Get.lazyPut<IEkrafRepository>(() => EkrafRepository(apiClient: Get.find()));
//     Get.lazyPut(() => EkrafController(ekrafRepository: Get.find()));
//   }
// }
//
// class EkrafDetailBinding extends Bindings {
//   @override
//   void dependencies() {
//     Get.lazyPut(() => ApiClient(Dio()));
//     Get.lazyPut<IEkrafRepository>(() => EkrafRepository(apiClient: Get.find()));
//     Get.lazyPut(() => EkrafDetailController(ekrafRepository: Get.find()));
//   }
// }
