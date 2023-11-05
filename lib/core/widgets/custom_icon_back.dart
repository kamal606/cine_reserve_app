import 'package:cine_reserve_app/core/constant/app_color.dart';
import 'package:cine_reserve_app/core/constant/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class CustomIconBack extends StatelessWidget {
  const CustomIconBack({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(left: 10.w),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: AppColor.white.withOpacity(0.3),
      ),
      child: IconButton(
        splashColor: AppColor.secondry,
        highlightColor: AppColor.secondry,
        onPressed: () {
          context.pop();
        },
        icon: Icon(
          AppIcon.arrowLeftUp,
          size: 25.h,
        ),
      ),
    );
  }
}
