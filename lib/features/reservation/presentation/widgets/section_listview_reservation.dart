import 'package:cine_reserve_app/core/constant/strings.dart';
import 'package:cine_reserve_app/core/widgets/custom_elvaited_button.dart';
import 'package:cine_reserve_app/features/reservation/presentation/widgets/custom_list_choose_day.dart';
import 'package:cine_reserve_app/features/reservation/presentation/widgets/custom_list_choose_hour.dart';
import 'package:cine_reserve_app/features/reservation/presentation/widgets/section_description.dart';
import 'package:cine_reserve_app/features/reservation/presentation/widgets/section_title_movie_and_release.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SectionListViewReservation extends StatelessWidget {
  const SectionListViewReservation({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const SectionTitleMovieAndGenreStrings(),
          SizedBox(
            height: 10.h,
          ),
          const SectionDescription(),
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              const CustomListChooseDay(),
              const CustomListChooseHour(),
              SizedBox(
                width: double.infinity,
                child: CustomElvatedButton(
                  title: kReservation,
                  onPressed: () {},
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30.h,
          ),
        ],
      ),
    );
  }
}
