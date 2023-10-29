import 'package:cine_reserve_app/core/constant/app_linear.dart';
import 'package:cine_reserve_app/core/constant/strings.dart';
import 'package:cine_reserve_app/features/home/presentation/widgets/custom_blurred_circle.dart';
import 'package:cine_reserve_app/features/home/presentation/widgets/custom_list_movie_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'carousel_home.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

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
                        const CustomCarouselHome(),
                        SizedBox(
                          height: 7.h,
                        ),
                        const CustomListViewCardMovie(
                          titleList: kNowCinemas,
                        ),
                        const CustomListViewCardMovie(
                          titleList: kComingSoon,
                        ),
                        const CustomListViewCardMovie(
                          titleList: kTopMovies,
                        ),
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
