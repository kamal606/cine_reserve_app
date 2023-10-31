import 'package:cine_reserve_app/core/constant/app_linear.dart';
import 'package:cine_reserve_app/features/home/presentation/widgets/home_widgets/custom_blurred_circle.dart';
import 'package:cine_reserve_app/features/home/presentation/widgets/shimmer_loading/shimmer_carusel.dart';
import 'package:cine_reserve_app/features/home/presentation/widgets/shimmer_loading/shimmer_dots.dart';
import 'package:cine_reserve_app/features/home/presentation/widgets/shimmer_loading/shimmer_list_movie.dart';
import 'package:cine_reserve_app/features/home/presentation/widgets/shimmer_loading/shimmer_title_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShimmerLoagingHome extends StatelessWidget {
  const ShimmerLoagingHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: kToolbarHeight + 75.h),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        gradient: AppLinear.linearPages,
      ),
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                //here i put all body home above blurredCircle
                Stack(
                  children: [
                    const BlurredCircle(),
                    Column(
                      children: [
                        const ShimmerCarusel(),
                        SizedBox(
                          height: 7.h,
                        ),
                        const ShimmerDots(),
                        SizedBox(
                          height: 7.h,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const ShimmerTitleList(),
                            SizedBox(
                              height: 10.h,
                            ),
                            const ShimmerListMovie(),
                            SizedBox(
                              height: 10.h,
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: kBottomNavigationBarHeight,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
