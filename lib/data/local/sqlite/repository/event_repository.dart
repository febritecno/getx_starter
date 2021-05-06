// import 'package:lets_goto_solo/config/exceptions/server_exception.dart';
// import 'package:lets_goto_solo/config/helpers/system/snackbar.dart';
// import 'package:lets_goto_solo/config/helpers/utils/connection_utils.dart';
// import 'package:lets_goto_solo/config/services/api_client/api_client.dart';
// import 'package:lets_goto_solo/data/domain/models/event_model.dart';
// import 'package:lets_goto_solo/data/domain/base_repository_adapter.dart';
// import 'package:lets_goto_solo/data/domain/detail_rating_model.dart';
// import 'package:lets_goto_solo/data/network/base_api_routes.dart';
//
// import '../../app_key.dart';
//
// class EventRepository implements IEventRepository {
//   EventRepository({this.apiClient});
//   final ApiClient apiClient;
//
//   @override
//   Future<List<EventModel>> getEventList() async {
//     if (await ConnectionUtils.isNetworkConnected()) {
//       try {
//         final response = await apiClient
//             .get(LangPrefs.changeUrlByLang(BaseApiRoutes.EVENT_GET));
//         // if there is a key before array
//         return (response.data['data'] as List)
//             .map((x) => EventModel.fromJson(x))
//             .toList();
//       } catch (error, stacktrace) {
//         throw ServerException(error, stacktrace);
//       }
//     } else {
//       return Future.error('Please check your network connection');
//     }
//   }
//
//   @override
//   Future getEventDetail(String id) async {
//     if (await ConnectionUtils.isNetworkConnected()) {
//       try {
//         final response = await apiClient.get(
//             LangPrefs.changeUrlByLang(BaseApiRoutes.EVENT_DETAIL_GET + id));
//         // one time hit http server and expose all service by each property key based JSON result
//         var getData = await getEventDetailData(response);
//         var getImageList = await getEventDetailImageList(response);
//         var getRatingList = await getEventDetailRatingList(response);
//         //collect result data each service to one map | how_use: data['image']
//         return {
//           "data": getData,
//           "image": getImageList,
//           "rating": getRatingList
//         };
//       } catch (error, stacktrace) {
//         throw ServerException(error, stacktrace);
//       }
//     } else {
//       return Future.error('Please check your network connection');
//     }
//   }
//
//   @override
//   Future postEventRating(id, name, comment, rating) async {
//     if (await ConnectionUtils.isNetworkConnected()) {
//       try {
//         final response =
//             await apiClient.post(BaseApiRoutes.ADD_RATING_EVENT_POST, {
//           'id_events': id.toString(),
//           'name_ratings': name.toString(),
//           'content_ratings': comment.toString(),
//           'jumlah_ratings': rating.toString()
//         });
//         return response;
//       } catch (error, stacktrace) {
//         AppSnackBar.error(error.toString());
//         throw ServerException(error, stacktrace);
//       }
//     } else {
//       return Future.error('Please check your network connection');
//     }
//   }
//
// //*** get each property from result detail_item [JSON] -------------------
//   @override
//   Future<List<DetailRatingModel>> getEventDetailRatingList(
//       dynamic response) async {
//     return (response.data['rating'] as List)
//         .map((x) => DetailRatingModel.fromJson(x))
//         .toList();
//   }
//
//   @override
//   Future<List<DetailImageModel>> getEventDetailImageList(
//       dynamic response) async {
//     return (response.data['image'] as List)
//         .map((x) => DetailImageModel.fromJson(x))
//         .toList();
//   }
//
//   @override
//   Future<EventDetailDataModel> getEventDetailData(dynamic response) async {
//     return EventDetailDataModel.fromJson(response.data["data"]);
//   }
// //***-------------------
// }
