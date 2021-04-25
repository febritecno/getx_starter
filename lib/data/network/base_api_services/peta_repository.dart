// import 'package:lets_goto_solo/config/exceptions/server_exception.dart';
// import 'package:lets_goto_solo/config/helpers/utils/connection_utils.dart';
// import 'package:lets_goto_solo/config/services/api_client/api_client.dart';
// import 'package:lets_goto_solo/data/domain/models/peta_model.dart';
// import 'package:lets_goto_solo/data/domain/repository_adapter.dart';
// import 'package:lets_goto_solo/data/network/api_routes.dart';
//
// import '../../prefs_key.dart';
//
// class PetaRepository implements IPetaRepository {
//   PetaRepository({this.apiClient});
//
//   final ApiClient apiClient;
//
//   @override
//   Future<List<PetaModel>> getPetaList() async {
//     if (await ConnectionUtils.isNetworkConnected()) {
//       try {
//         final response = await apiClient
//             .get(LangPrefs.changeUrlByLang(BaseApiRoutes.PETA_WISATA_GET));
//         // if there is a key before array
//         return (response.data['data'] as List)
//             .map((x) => PetaModel.fromJson(x))
//             .toList();
//       } catch (error, stacktrace) {
//         throw ServerException(error, stacktrace);
//       }
//     } else {
//       return Future.error('Please check your network connection');
//     }
//   }
// }
