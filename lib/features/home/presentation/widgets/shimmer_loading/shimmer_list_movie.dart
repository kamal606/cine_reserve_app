import 'package:cine_reserve_app/core/constant/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerListMovie extends StatelessWidget {
  const ShimmerListMovie({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.black12,
      highlightColor: AppColor.secondry,
      child: SizedBox(
        height: 120.h,
        child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, i) {
              return Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 12.w),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.r),
                      child: AspectRatio(
                        aspectRatio: 2.7 / 4,
                        child: Container(
                          color: AppColor.white,
                        ),
                      ),
                    ),
                  )
                ],
              );
            }),
      ),
    );
  }
}
