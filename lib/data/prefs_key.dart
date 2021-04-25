// Management Prefs Key Local Storage

import 'package:apple_music_searchly/config/helpers/utils/prefs_utils.dart';

class LangPrefs {
  static String get() => Prefs.getString('lang');

  static Future<bool> set(String value) => Prefs.setString('lang', value);

  static bool isKeyNull() => (Prefs.getString('lang') == null) ? true : false;

  static changeUrlByLang(String url) {
    switch (LangPrefs.get()) {
      case "en":
        return url + "/en";
        break;
      case "id":
        return url;
        break;
    }
  }
}
