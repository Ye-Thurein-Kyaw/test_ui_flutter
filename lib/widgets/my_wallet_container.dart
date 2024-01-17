import 'package:enefty_icons/enefty_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shwe_bo_2d_3d/utils/color_scheme.dart';

class MyWalletContainer extends StatelessWidget {
  final bool visibleSecond;
  const MyWalletContainer({super.key, required this.visibleSecond});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: containerColor, borderRadius: BorderRadius.circular(24)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const WalletItem(
              icon: EneftyIcons.bag_2_outline,
              rowText: 'ကျွန်ုပ်ပိုက်ဆံအိတ်',
              amountText: '12,000',
            ),
            Visibility(
              visible: visibleSecond,
              child: const Column(
                children: [
                  SizedBox(
                    height: 12,
                  ),
                  WalletItem(
                    icon: EneftyIcons.coin_outline,
                    rowText: 'ဂိမ်းပိုက်ဆံအိတ်',
                    amountText: '240,000',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class WalletItem extends StatelessWidget {
  final IconData icon;
  final String rowText;
  final String amountText;
  const WalletItem(
      {super.key,
      required this.icon,
      required this.rowText,
      required this.amountText});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(
              icon,
              color: textColor1,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              rowText,
              style: const TextStyle(
                color: Color(0xFFABB1CC),
                fontFamily: "Noto Sans Myanmar",
                fontWeight: FontWeight.w500,
                fontSize: 14,
              ),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              amountText,
              style: TextStyle(
                color: Get.theme.colorScheme.onPrimary,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w700,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Icon(
              EneftyIcons.add_circle_bold,
              color: Get.theme.colorScheme.primary,
            )
          ],
        )
      ],
    );
  }
}
