import 'package:cine_reserve_app/core/constant/app_linear.dart';
import 'package:cine_reserve_app/features/home/presentation/widgets/home_widgets/custom_blurred_circle.dart';
import 'package:cine_reserve_app/features/home/presentation/widgets/home_widgets/grid_view_movies/grid_view_top_rated.dart';
import 'package:cine_reserve_app/features/home/presentation/widgets/home_widgets/grid_view_movies/grid_view_up_coming.dart';
import 'package:cine_reserve_app/features/home/presentation/widgets/home_widgets/grid_view_movies/gridview_now_in_cinemas.dart';
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 7.h,
                        ),
                        const CustomCarouselHome(),
                        SizedBox(
                          height: 20.h,
                        ),
                        const GridViewTopRatedHome(),
                        SizedBox(
                          height: 15.h,
                        ),
                        const GridViewUpComingHome(),
                        SizedBox(
                          height: 15.h,
                        ),
                        const GridViewNowInCinemasHome(),
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
