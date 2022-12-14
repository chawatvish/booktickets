import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppLayout {
  static Size getSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  static double getScreenHeight() {
    return Get.height;
  }

  static double getScreenWidth() {
    return Get.width;
  }

  static double getHeight(int pixels) {
    double y = getScreenHeight() / pixels;
    return getScreenHeight() / y;
  }

  static double getWidth(int pixels) {
    double x = getScreenWidth() / pixels;
    return getScreenWidth() / x;
  }
}
