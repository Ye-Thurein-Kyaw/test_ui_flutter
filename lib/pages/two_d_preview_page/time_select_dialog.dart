import 'package:flutter/material.dart';
import 'package:get/get.dart';
class TimeSelectDialog extends StatelessWidget {
  const TimeSelectDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'ထိုးမည့်အချိန်ကိုရွေးပါ',
                  style: TextStyle(
                      color: Color(0xFF232323),
                      fontFamily: "Noto Sans Myanmar",
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () {
                    Get.back();
                  },
                )
              ],
            ),
            const Divider(
              color: Colors.grey,
              thickness: 1.0,
              height: 20,
            ),
            const SizedBox(
              height: 16,
            ),
            // GradientBtn(
            //   onPressed: () {
            //     Get.toNamed(TwoDPage.route,arguments: "09:30 AM")?.then((value) => Get.back());
            //   },
            //   gradient: primaryLinar,
            //   child: const Text(
            //     "09:30 AM",
            //     style: TextStyle(color: Colors.white),
            //   ),
            // ),
            const SizedBox(height: 12),
            // GradientBtn(
            //   onPressed: () {
            //     Get.toNamed(TwoDPage.route,arguments: "12:00 PM")?.then((value) => Get.back());
            //   },
            //   gradient: primaryLinar,
            //   child: const Text(
            //     "12:00 PM",
            //     style: TextStyle(color: Colors.white),
            //   ),
            // ),
            const SizedBox(height: 12),
            // GradientBtn(
            //   onPressed: () {
            //     Get.toNamed(TwoDPage.route,arguments: "02:00 PM")?.then((value) => Get.back());
            //   },
            //   gradient: primaryLinar,
            //   child: const Text(
            //     "02:00 PM",
            //     style: TextStyle(color: Colors.white),
            //   ),
            // ),
            const SizedBox(height: 12),
            // GradientBtn(
            //   onPressed: () {
            //     Get.toNamed(TwoDPage.route,arguments: "04:30 PM")?.then((value) => Get.back());
            //   },
            //   gradient: primaryLinar,
            //   child: const Text(
            //     "04:30 PM",
            //     style: TextStyle(color: Colors.white),
            //   ),
            // ),
            const SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
}
