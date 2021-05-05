// import 'package:lets_goto_solo/config/exceptions/server_exception.dart';
// import 'package:lets_goto_solo/config/helpers/utils/connection_utils.dart';
// import 'package:lets_goto_solo/config/services/api_client/api_client.dart';
// import 'package:lets_goto_solo/data/domain/models/home_model.dart';
// import 'package:lets_goto_solo/data/domain/base_repository_adapter.dart';
// import 'package:lets_goto_solo/data/network/base_api_routes.dart';
//
// import '../../prefs_key.dart';
//
// class HomeRepository implements IHomeRepository {
//   HomeRepository({this.apiClient});
//
//   final ApiClient apiClient;
//
//   @override
//   Future<List<LastEventModel>> getLastEventList() async {
//     if (await ConnectionUtils.isNetworkConnected()) {
//       try {
//         final maxTotalData = "10";
//         final response = await apiClient.get(LangPrefs.changeUrlByLang(
//             BaseApiRoutes.LAST_EVENT_GET + maxTotalData));
//         // if there is a key before array
//         return (response.data['data'] as List)
//             .map((x) => LastEventModel.fromJson(x))
//             .toList();
//       } catch (error, stacktrace) {
//         throw ServerException(error, stacktrace);
//       }
//     } else {
//       return Future.error('Please check your network connection');
//     }
//   }
// }
