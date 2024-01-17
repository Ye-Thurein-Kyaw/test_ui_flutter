import 'package:flutter/material.dart';
import 'package:shwe_bo_2d_3d/pages/home_page/home_page_btn.dart';

class BtnRow extends StatelessWidget {
  final String firstImageUrl;
  final VoidCallback firstOnTap;
  final String firstText;
  final String secondImageUrl;
  final VoidCallback secondOnTap;
  final String secondText;
  const BtnRow(
      {super.key,
      required this.firstImageUrl,
      required this.firstOnTap,
      required this.firstText,
      required this.secondImageUrl,
      required this.secondOnTap,
      required this.secondText});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        HomePageBTN(
          imageUrl: firstImageUrl,
          onTap: firstOnTap,
          text: firstText,
        ),
        HomePageBTN(
          imageUrl: secondImageUrl,
          onTap: secondOnTap,
          text: secondText,
        ),
      ],
    );
  }
}
