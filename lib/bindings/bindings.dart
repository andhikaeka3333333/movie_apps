import 'package:get/get.dart';
import 'package:movie_apps/controller/favorite_controller.dart';
import 'package:movie_apps/controller/login_controller.dart';
import 'package:movie_apps/controller/movie_controller.dart';

import '../controller/dashboard_controller.dart';

class MyBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DashboardController());
    Get.lazyPut(() => MovieController());
    Get.lazyPut(() => LoginController());
    Get.lazyPut(() => FavoriteController());
  }
}