import 'package:cine_reserve_app/core/constant/app_color.dart';
import 'package:cine_reserve_app/features/home/presentation/widgets/bottom_nav_bar_widgets/body_bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 70.h,
          decoration: BoxDecoration(
            color: AppColor.secondry,
            border: Border.merge(
                Border(
                    top: BorderSide.merge(
                  const BorderSide(color: AppColor.primary),
                  const BorderSide(color: AppColor.primary),
                )),
                const Border()),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.h),
            child: const BodyBottomNavBar(),
          ),
        )
      ],
    );
  }
}
