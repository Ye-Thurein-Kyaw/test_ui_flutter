import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shwe_bo_2d_3d/controllers/two_d_prview_page_controller.dart';
import 'package:shwe_bo_2d_3d/pages/two_d/two_d_preview_page/time_select_dialog.dart';
import 'package:shwe_bo_2d_3d/widgets/elevated_button.dart';

class TwoDPreLiveWidget extends StatelessWidget {
  final TwoDPreViewController controller;
  const TwoDPreLiveWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          '26',
          style: TextStyle(
            color: Color(0xFFDDE3F0),
            fontFamily: "Roboto",
            fontWeight: FontWeight.w900,
            fontSize: 57,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.check_circle_outline,
              color: Get.theme.colorScheme.onPrimary,
            ),
            const SizedBox(
              width: 8,
            ),
            const Text(
              'Updated: 18/12/2023 - 04:30:00 PM',
              style: TextStyle(
                color: Color(0xFFDDE3F0),
                fontFamily: "Roboto",
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
            )
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        const Text(
          '11:50:00 AM တွင် ထီပိတ်ပါမည်။',
          style: TextStyle(
            color: Color(0xFFABB1CC),
            fontFamily: "Pyidaungsu",
            fontWeight: FontWeight.w400,
            fontSize: 16,
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Container(
          width: double.infinity,
          height: Get.size.height * 0.3,
          decoration: BoxDecoration(
              color: Get.theme.colorScheme.primary,
              borderRadius: BorderRadius.circular(24)),
        ),
        const SizedBox(
          height: 12,
        ),
        ElevatedBtn(
          onPressed: () {
            controller.selectTime(const TimeSelectDialog());
          },
          width: 120,
          child: Text(
            'ထိုးမည်',
            style: TextStyle(
              color: Get.theme.colorScheme.onPrimary,
              fontFamily: "Noto Sans Myanmar",
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }
}
