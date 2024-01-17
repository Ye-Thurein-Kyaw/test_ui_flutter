import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePageBTN extends StatelessWidget {
  final String imageUrl;
  final VoidCallback onTap;
  final String text;
  const HomePageBTN(
      {super.key,
      required this.imageUrl,
      required this.onTap,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
            onTap: onTap,
            child: Image.asset(
              imageUrl,
              width: 160,
            )),
        Text(
          text,
          style: TextStyle(
            color: Get.theme.colorScheme.onPrimary,
            fontFamily: "Noto Sans Myanmar",
            fontWeight: FontWeight.w700,
            fontSize: 14,
          ),
        )
      ],
    );
  }
}
