import 'package:enefty_icons/enefty_icons.dart';
import 'package:flutter/material.dart';
import 'package:shwe_bo_2d_3d/pages/two_d/two_d_page/four_column_row_widget.dart';
import 'package:shwe_bo_2d_3d/pages/two_d/two_d_page/remaining_time_widget.dart';
import 'package:shwe_bo_2d_3d/utils/color_scheme.dart';
import 'package:shwe_bo_2d_3d/utils/global_function.dart';
import 'package:shwe_bo_2d_3d/widgets/my_wallet_container.dart';

class TwoDPage extends StatelessWidget {
  static const route = '/two_d_page';
  const TwoDPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GlobalFunction.appBar('2D'),
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
                    const MyWalletContainer(visibleSecond: false),
                    const SizedBox(
                      height: 16,
                    ),
                    FourColumnRowWidget(
                      firstText: 'အခွေ',
                      firstIcon: EneftyIcons.shield_cross_outline,
                      firstOnTap: () {},
                      secondText: 'အမြန်ရွေး',
                      secondIcon: Icons.energy_savings_leaf_outlined,
                      secondOnTap: () {},
                      thirdText: 'ပတ်လည်',
                      thirdIcon: Icons.turn_left_outlined,
                      thirdOnTap: () {},
                      fourthText: 'အိပ်မက်',
                      fourthIcon: Icons.emoji_nature_sharp,
                      fourthOnTap: () {},
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    const RemainingTime()
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
