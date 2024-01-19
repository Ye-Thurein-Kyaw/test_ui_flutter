import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:shwe_bo_2d_3d/pages/home_page/base_page.dart';
import 'package:shwe_bo_2d_3d/pages/splash_page/splash_page.dart';
import 'package:shwe_bo_2d_3d/pages/two_d/two_d_page/two_d_page.dart';
import 'package:shwe_bo_2d_3d/pages/two_d/two_d_preview_page/two_d_preview_page.dart';

List<GetPage<dynamic>>? getPages = [
  GetPage(name: SplashPage.route, page: () => const SplashPage()),
  GetPage(name: BasePage.route, page: () => const BasePage()),
  GetPage(name: TwoDPreviewPage.route, page: () => const TwoDPreviewPage()),
  GetPage(name: TwoDPage.route, page: () => const TwoDPage()),
];