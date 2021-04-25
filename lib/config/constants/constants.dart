//## Base Constant Config  ----------------------------

import 'dart:ui';
import 'fonts.gen.dart';

const String APP_NAME = "Apple Music Searcher";
const String BASE_API_URL = "";

//!! Shared Variables  ----------------------------
class ConstVars {
  //# Default Configuration
  //!! language app
  static const Locale defaultLocale = Locale('id', 'ID');
  static const Locale defaultLocaleFallback = Locale('en', 'US');
  //!! style properties
  static const dynamic defaultFont = FontFamily.inter;
  static const dynamic defaultTextScaling =
      0.75; // default text scaling factory (auto resize by font size in the mobile client user)
}
