import 'package:apple_music_searchly/config/helpers/utils/prefs_utils.dart';
import 'package:get/get.dart';

/// The only way to actually delete a GetxService,
/// is with Get.reset() which is like a "Hot Reboot" of your app.
/// So remember, if you need absolute persistence of a class instance during the lifetime of your app, use GetxService.
void initServices() async {
  await Get.putAsync(() => PrefsService().init());
}

class PrefsService extends GetxService {
  Future<PrefsService> init() async {
    // initialization SharedPreferences [data -> prefs_key]
    await Prefs.init();
    return this;
  }
}
