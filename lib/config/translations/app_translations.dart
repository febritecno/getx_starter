import 'package:apple_music_searchly/config/constants/app_constants.dart';
import 'package:get/get.dart';

import 'en_US.dart';
import 'id_ID.dart';

class AppTranslations extends Translations {
  // translations will be displayed in that locale
  // get dynamic localization change from locale phone use -> Get.deviceLocale
  // default set language app
  static final locale = ConstVars.defaultLocale;

  // specify the fallback locale in case an invalid locale is selected.
  // when error translate by default language app
  static final fallbackLocale = ConstVars.defaultLocaleFallback;

  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': en_US,
        'id_ID': id_ID,
      };
}
