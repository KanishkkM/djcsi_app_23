import 'package:get/get.dart';

import 'package:djcsi_app/bindings/getdart.dart';
import 'package:djcsi_app/pages/home.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
  ];
}