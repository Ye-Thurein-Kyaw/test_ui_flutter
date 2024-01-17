import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:enefty_icons/enefty_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shwe_bo_2d_3d/controllers/my_app_controller.dart';
import 'package:shwe_bo_2d_3d/utils/color_scheme.dart';
import 'package:shwe_bo_2d_3d/utils/global_function.dart';
import 'package:shwe_bo_2d_3d/widgets/profile_bar.dart';

class BasePage extends StatelessWidget {
  static const route = "/base_page";
  const BasePage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(MyAppController());
    return Scaffold(
      appBar: GlobalFunction.appBar(),
      body: Column(
        children: [
          const ProfileBar(),
          Obx(() => Expanded(child: controller.pages[controller.currentPage])),
        ],
      ),
      bottomNavigationBar: StyleProvider(
        style: Style(),
        child: ConvexAppBar(
            style: TabStyle.fixedCircle,
            activeColor: Get.theme.colorScheme.primary,
            initialActiveIndex: 2,
            color: Colors.white,
            height: 65,
            gradient: bottomBarColor,
            items: [
              const TabItem(
                  icon: EneftyIcons.wallet_2_outline,
                  title: 'ပိုက်ဆံအိတ်',
                  fontFamily: ""),
              const TabItem(
                  icon: EneftyIcons.note_outline, title: 'ပရိုမိုးရှင်း'),
              TabItem(
                  icon: Icon(
                    EneftyIcons.home_2_bold,
                    color: Get.theme.colorScheme.primary,
                  ),
                  title: ' ပင်မ',
                  activeIcon: Icon(
                    EneftyIcons.home_2_bold,
                    color: Get.theme.colorScheme.onPrimary,
                  )),
              const TabItem(
                  icon: EneftyIcons.mobile_outline, title: 'ဝန်ဆောင်မှု'),
              const TabItem(
                  icon: EneftyIcons.profile_outline, title: 'ကျွန်ုပ်'),
            ],
            onTap: (int i) {
              controller.setCurrentPage(i);
            }),
      ),
    );
  }
}

class Style extends StyleHook {
  @override
  double get activeIconSize => 30;

  @override
  double get activeIconMargin => 10;

  @override
  double get iconSize => 25;

  @override
  TextStyle textStyle(Color color, String? s) {
    return TextStyle(
      fontSize: 12,
      color: color,
    );
  }
}
