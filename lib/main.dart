import 'package:apple_music_searchly/routes/app_pages.dart';
import 'package:apple_music_searchly/routes/app_routes.dart';
import 'package:apple_music_searchly/views/pages/unknown_route_page.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer_util.dart';
import 'config/constants/constants.dart';
import 'config/helpers/utils/logger_utils.dart';
import 'config/services/services.dart';
import 'config/translations/translation_service.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initServices();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //* Change color statusbar ********
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.black));

    ///* Disable orientation landscape mode ********
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizerUtil().init(constraints, orientation); //initialize SizerUtil
            return GetMaterialApp(
              //***  uncomment DevicePreview.appBuilder builder for enable device preview [testing] ---------
              // builder: DevicePreview.appBuilder,
              debugShowCheckedModeBanner: false,
              enableLog: true,
              logWriterCallback: Logger.write,
              title: APP_NAME,
              unknownRoute: GetPage(
                  name: Routes.NOTFOUND, page: () => UnknownRouteScreen()),
              initialRoute: AppPages.INITIAL,
              getPages: AppPages.routes,
              // THEME LOADER -------------------
              theme: ThemeData(
                  primaryColor: Colors.blue, accentColor: Colors.blueAccent),
              // LOCALIZATION MULTILANGUAGE LOADER (l10n)-------------
              locale: TranslationService.locale,
              fallbackLocale: TranslationService.fallbackLocale,
              translations: TranslationService(),
            );
          },
        );
      },
    );
  }
}
