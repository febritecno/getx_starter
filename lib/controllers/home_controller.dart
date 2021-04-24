import 'dart:async';

import 'package:apple_music_searchly/data/domain/repository_adapter.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  HomeController({this.homeRepository});

  /// inject repo abstraction dependency
  final IHomeRepository homeRepository;

  ///*** STATE -------------------
  // create a reactive state each property data in JSON

  // create a reactive state for status connection & loading
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
