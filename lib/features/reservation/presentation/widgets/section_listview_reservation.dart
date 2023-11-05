import 'package:cine_reserve_app/features/reservation/presentation/widgets/custom_list_choose_day.dart';
import 'package:cine_reserve_app/features/reservation/presentation/widgets/custom_list_choose_hour.dart';
import 'package:cine_reserve_app/features/reservation/presentation/widgets/section_description.dart';
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
          const SectionDescription(),
          SizedBox(
            height: 20.h,
          ),
          const Stack(
            alignment: Alignment.bottomCenter,
            children: [
              CustomListChooseDay(),
              CustomListChooseHour(),
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
