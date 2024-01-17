
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TwoDPreViewController extends GetxController {
  static TwoDPreViewController get instance => Get.find();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }

  selectTime(Widget widget) {
    Get.dialog(widget);
  }

}
