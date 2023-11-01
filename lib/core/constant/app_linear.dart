import 'package:cine_reserve_app/core/constant/app_color.dart';
import 'package:flutter/material.dart';

abstract class AppLinear {
  static const LinearGradient linearPages = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        AppColor.primary,
        AppColor.secondry,
      ]);
  static LinearGradient linearCatalogeHome = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        AppColor.white.withAlpha(40),
        AppColor.white.withAlpha(40),
        AppColor.coralRed.withAlpha(150),
      ]);
}
