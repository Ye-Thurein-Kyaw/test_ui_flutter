import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shwe_bo_2d_3d/pages/home_page/home_page_btn.dart';
import 'package:shwe_bo_2d_3d/pages/home_page/home_page_btn_row.dart';
import 'package:shwe_bo_2d_3d/pages/two_d_preview_page/two_d_preview_page.dart';
import 'package:shwe_bo_2d_3d/utils/color_scheme.dart';
import 'package:shwe_bo_2d_3d/widgets/my_wallet_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: const BoxDecoration(gradient: backGroundGradient),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 14),
                child: Column(
                  children: [
                    const MyWalletContainer(
                      visibleSecond: true,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Image.asset('assets/images/home_page_ads.png'),
                    BtnRow(
                      firstImageUrl: "assets/images/two_d_Button.png",
                      firstOnTap: () {
                        Get.toNamed(TwoDPreviewPage.route);
                      },
                      firstText: '၂လုံးထီ',
                      secondImageUrl: "assets/images/three_d_Button.png",
                      secondOnTap: () {},
                      secondText: '၃လုံးထီ',
                    ),
                    BtnRow(
                      firstImageUrl: "assets/images/two_d_Button.png",
                      firstOnTap: () {},
                      firstText: 'ရိုးရားဂိမ်း',
                      secondImageUrl: "assets/images/three_d_Button.png",
                      secondOnTap: () {},
                      secondText: 'A8 ရှမ်းကိုးမီး',
                    ),
                    BtnRow(
                      firstImageUrl: "assets/images/two_d_Button.png",
                      firstOnTap: () {},
                      firstText: 'Live 22',
                      secondImageUrl: "assets/images/three_d_Button.png",
                      secondOnTap: () {},
                      secondText: 'ကြက်တိုက်ဂိမ်း',
                    ),
                    Row(
                      children: [
                        HomePageBTN(
                            imageUrl: "assets/images/two_d_Button.png",
                            onTap: () {},
                            text: 'Football Live')
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
