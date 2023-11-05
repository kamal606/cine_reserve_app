import 'package:cine_reserve_app/core/constant/app_color.dart';
import 'package:flutter/material.dart';

abstract class AppLinear {
  static const LinearGradient linearPages = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        AppColor.secondry,
        AppColor.primary,
      ]);

  static LinearGradient linearButton = const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        AppColor.tan,
        AppColor.coralRed,
      ]);
}
