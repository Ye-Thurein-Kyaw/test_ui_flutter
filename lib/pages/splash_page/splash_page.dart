import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home_page/base_page.dart';


class SplashPage extends StatelessWidget {
  static const route = "/";
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(
        const Duration(seconds: 1), () => Get.offAndToNamed(BasePage.route));
    return const Scaffold();
  }
}
