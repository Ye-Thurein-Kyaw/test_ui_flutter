import 'package:enefty_icons/enefty_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:shwe_bo_2d_3d/controllers/two_d_page_controller.dart';
import 'package:shwe_bo_2d_3d/utils/color_scheme.dart';

class RemainingTime extends StatelessWidget {
  const RemainingTime({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<TwoDPageController>();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Row(
          children: [
            Icon(
              EneftyIcons.clock_2_outline,
              color: Color(0xFFABB1CC),
            ),
            SizedBox(
              width: 3,
            ),
            Text(
              "ပိတ်ရန်ကျန်ချိန် ",
              style: TextStyle(
                  color: textColor1,
                  fontFamily: "Noto Sans Myanmar ",
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              "12:01",
              style: TextStyle(
                  color: Color(0xFFFEFEFE),
                  fontFamily: "Poppins",
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
        Obx(
          () => DropdownButton<String>(
            value: controller.selectedTime.value,
            onChanged: (String? newValue) {
              if (newValue != null) {
                controller.updateSelectedTime(newValue);
              }
            },
            items: controller.timeList.map<DropdownMenuItem<String>>(
              (String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: const TextStyle(
                      color: Color(0xFF3B3636),
                      fontFamily: "Noto Sans Myanmar",
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                );
              },
            ).toList(),
          ),
        )
      ],
    );
  }
}
