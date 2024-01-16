import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shwe_bo_2d_3d/pages/about_page/about_page.dart';
import 'package:shwe_bo_2d_3d/pages/home_page/home_page.dart';
import 'package:shwe_bo_2d_3d/pages/promotion_page/promotion_list_page.dart';
import 'package:shwe_bo_2d_3d/pages/service_page/service_page.dart';
import 'package:shwe_bo_2d_3d/pages/wallet_page/wallet_page.dart';

class MyAppController extends GetxController {
  static MyAppController get instance => Get.find();

  @override
  void onInit() {
    super.onInit();
  }

  final List<Widget> _pages = const [
    WalletPage(),
    PromotionPage(),
    HomePage(),
    ServicePage(),
    AboutPage(),
  ];
  final RxInt _currentPage = 2.obs;
  final RxBool _isSelectedKyat = true.obs;
  final RxBool _isLoading = false.obs;

  RxBool get isSelectedKyat => _isSelectedKyat;
  RxBool get isLoading => _isLoading;
  List<Widget> get pages => _pages;
  int get currentPage => _currentPage.value;

  

  setCurrentPage(int i) {
    if (i < 0 || i > _pages.length) {
      return;
    }
    _currentPage.value = i;
  }
}
