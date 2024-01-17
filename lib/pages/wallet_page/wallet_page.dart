import 'package:enefty_icons/enefty_icons.dart';
import 'package:flutter/material.dart';
import 'package:shwe_bo_2d_3d/utils/color_scheme.dart';
import 'package:shwe_bo_2d_3d/widgets/my_wallet_container.dart';
import 'package:shwe_bo_2d_3d/widgets/white_Container_three_column.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({super.key});

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
                    WhiteContainerThreeColumnWidget(
                      firstText: 'ငွေဖြည့်',
                      firstIcon: EneftyIcons.note_text_outline,
                      firstOnTap: () {},
                      secondText: 'ငွေထုတ်',
                      secondIcon: EneftyIcons.coin_outline,
                      secondOnTap: () {},
                      thirdText: 'မှတ်တမ်း',
                      thirdIcon: EneftyIcons.note_text_outline,
                      thirdOnTap: () {},
                    ),
                    const SizedBox(
                      height: 12,
                    ),
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
