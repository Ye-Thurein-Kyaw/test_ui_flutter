import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shwe_bo_2d_3d/pages/splash_page/splash_page.dart';
import 'package:shwe_bo_2d_3d/utils/color_scheme.dart';
import 'package:shwe_bo_2d_3d/utils/route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: lightTheme,
      darkTheme: darkTheme,
      initialRoute: SplashPage.route,
      defaultTransition: Transition.fade,
      getPages: getPages,
    );
  }
}
