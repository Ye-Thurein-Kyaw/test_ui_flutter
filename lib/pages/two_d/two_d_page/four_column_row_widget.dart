import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FourColumnRowWidget extends StatelessWidget {
  final String firstText;
  final IconData firstIcon;
  final VoidCallback firstOnTap;
  final String secondText;
  final IconData secondIcon;
  final VoidCallback secondOnTap;
  final String thirdText;
  final IconData thirdIcon;
  final VoidCallback thirdOnTap;
  final String fourthText;
  final IconData fourthIcon;
  final VoidCallback fourthOnTap;
  const FourColumnRowWidget({
    Key? key,
    required this.firstText,
    required this.firstIcon,
    required this.firstOnTap,
    required this.secondText,
    required this.secondIcon,
    required this.secondOnTap,
    required this.thirdText,
    required this.thirdIcon,
    required this.thirdOnTap,
    required this.fourthText,
    required this.fourthIcon,
    required this.fourthOnTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            columnItem(
              firstText,
              firstIcon,
              firstOnTap,
            ),
            columnItem(
              secondText,
              secondIcon,
              secondOnTap,
            ),
            columnItem(
              thirdText,
              thirdIcon,
              thirdOnTap,
            ),
            columnItem(
              fourthText,
              fourthIcon,
              fourthOnTap,
            ),
          ],
        ),
      ),
    );
  }

  Widget columnItem(String text, IconData iconData, VoidCallback containerTap) {
    return GestureDetector(
      onTap: containerTap,
      child: Column(
        children: [
          Container(
              height: 32,
              width: 32,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Get.theme.colorScheme.primary,
              ),
              child: Icon(
                iconData,
                size: 24,
                color: Get.theme.colorScheme.onPrimary,
              )),
          const SizedBox(
            height: 8,
          ),
          Text(
            text,
            style: const TextStyle(
              color: Color(0xFFDDE3F0),
              fontFamily: "Pyidaungsu",
              fontWeight: FontWeight.w400,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
