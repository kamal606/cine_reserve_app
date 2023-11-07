import 'package:cine_reserve_app/core/constant/app_assets_icons.dart';
import 'package:cine_reserve_app/core/constant/app_color.dart';
import 'package:cine_reserve_app/core/constant/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SectionInfoDateAndTime extends StatelessWidget {
  const SectionInfoDateAndTime({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset(
          AppAssetsIcons.calendar,
          height: 20.h,
          width: 20.w,
        ),
        SizedBox(
          width: 6.w,
        ),
        Text(
          "Thu, June 15, 2023",
          style: AppFonts.regular_14.copyWith(color: AppColor.white),
        ),
        SizedBox(
          width: 6.w,
        ),
        CircleAvatar(
          radius: 4.r,
          backgroundColor: AppColor.white,
        ),
        SizedBox(
          width: 6.w,
        ),
        SizedBox(
          width: 90.w,
          child: Text(
            "18:00 pm",
            style: AppFonts.regular_14.copyWith(color: AppColor.white),
            overflow: TextOverflow.ellipsis,
          ),
        )
      ],
    );
  }
}
