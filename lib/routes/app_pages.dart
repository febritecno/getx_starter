import 'package:apple_music_searchly/config/helpers/third_party/first_time.dart';
import 'package:apple_music_searchly/views/pages/home_page/home_page.dart';
import 'package:apple_music_searchly/views/pages/intro_page/intro_page.dart';
import 'package:get/get_navigation/src/routes/default_route.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import 'app_routes.dart';
import 'bindings/app_bindings.dart';

class AppPages {
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
        name: INITIAL,
        page: () {
          return FirstTimeScreen(
              introScreen: GetPageRoute(
                  routeName: Routes.INTRO,
                  page: () => IntroPage(),
                  binding: IntroBinding()),
              landingScreen: GetPageRoute(
                  routeName: Routes.HOME,
                  page: () => HomePage(),
                  binding: HomeBinding()));
        }),
  ];
}
