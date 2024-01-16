import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class GlobalFunction {
  static PreferredSizeWidget appBar([String? title]) {
    return AppBar(
      centerTitle: true,
      systemOverlayStyle: SystemUiOverlayStyle.light,
      foregroundColor: Colors.white,
      title: Text(title??'ShweBo 2D'),
      flexibleSpace: Container(
        decoration:  BoxDecoration(
          color: Get.theme.colorScheme.primary
        ),
      ),
    );
  }

}
