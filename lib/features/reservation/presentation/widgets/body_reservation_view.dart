import 'package:cine_reserve_app/core/constant/app_linear.dart';
import 'package:cine_reserve_app/features/reservation/presentation/widgets/section_image.dart';
import 'package:cine_reserve_app/features/reservation/presentation/widgets/section_listview_reservation.dart';
import 'package:cine_reserve_app/features/reservation/presentation/widgets/section_title_movie_and_release.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BodyReservationView extends StatelessWidget {
  const BodyReservationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        gradient: AppLinear.linearPages,
      ),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          const Column(
            children: [
              SectionImageReversation(),
            ],
          ),
          Container(
            padding: EdgeInsets.only(top: 66.h, left: 12.w, right: 12.w),
            height: MediaQuery.of(context).size.height / 1.6,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(gradient: AppLinear.linearConrainer),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SectionTitleMovieAndRelaseStrings(),
                SizedBox(
                  height: 10.h,
                ),
                const SectionListViewReservation(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
