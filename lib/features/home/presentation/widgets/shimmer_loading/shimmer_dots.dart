import 'package:cine_reserve_app/core/constant/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerDots extends StatelessWidget {
  const ShimmerDots({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...List.generate(3, (index) {
          return Shimmer.fromColors(
            baseColor: Colors.black12,
            highlightColor: AppColor.secondry,
            child: Padding(
              padding: EdgeInsets.only(right: 20.h),
              child: CircleAvatar(radius: 4.r, backgroundColor: AppColor.white),
            ),
          );
        }),
      ],
    );
  }
}
