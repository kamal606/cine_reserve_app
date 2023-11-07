import 'package:cine_reserve_app/core/constant/app_assets_icons.dart';
import 'package:cine_reserve_app/core/constant/app_color.dart';
import 'package:cine_reserve_app/core/constant/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SectionInfoPrice extends StatelessWidget {
  const SectionInfoPrice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset(
          AppAssetsIcons.cart,
          height: 20.h,
          width: 20.w,
        ),
        SizedBox(
          width: 6.w,
        ),
        Text(
          "Total 4 : QAR 160",
          style: AppFonts.regular_14.copyWith(color: AppColor.white),
        ),
      ],
    );
  }
}
