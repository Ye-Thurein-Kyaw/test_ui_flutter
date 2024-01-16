import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:shwe_bo_2d_3d/pages/home_page/base_page.dart';
import 'package:shwe_bo_2d_3d/pages/splash_page/splash_page.dart';

List<GetPage<dynamic>>? getPages = [
  GetPage(name: SplashPage.route, page: () => const SplashPage()),
  GetPage(name: BasePage.route, page: () => const BasePage()),
];