import 'package:cine_reserve_app/core/constant/strings.dart';
import 'package:cine_reserve_app/core/utils/router.dart';
import 'package:cine_reserve_app/core/widgets/custom_elvaited_button.dart';
import 'package:cine_reserve_app/features/reservation/presentation/widgets/reservation_widgets/custom_box_choose_day.dart';
import 'package:cine_reserve_app/features/reservation/presentation/widgets/reservation_widgets/custom_box_choose_hour.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class SectionListChooseDayAndHour extends StatefulWidget {
  const SectionListChooseDayAndHour({super.key});

  @override
  State<SectionListChooseDayAndHour> createState() =>
      _SectionListChooseDayAndHourState();
}

class _SectionListChooseDayAndHourState
    extends State<SectionListChooseDayAndHour> {
  List<String> titles = ["Tue", "Wed", "Thu", "Fri", "Sat"];
  List<String> subTitles = ["13", "14", "15", "16", "17"];
  List<String> hour = ["16:00", "17:00", "18:00", "19:00", "20:00"];

  List<bool> isTapHour = List.filled(5, false);
  List<bool> isTapDayList = List.filled(5, false);

  bool selectedHourIndex = false;
  bool selectedDayIndex = false;

  void handleTapHour(int index) {
    setState(() {
      for (var i = 0; i < isTapHour.length; i++) {
        if (i == index) {
          isTapHour[i] = !isTapHour[i];
          selectedHourIndex = isTapHour[i];
        } else {
          isTapHour[i] = false;
        }
      }
    });
  }

  void handleTapDay(int index) {
    setState(() {
      for (var i = 0; i < isTapDayList.length; i++) {
        if (i == index) {
          isTapDayList[i] = !isTapDayList[i];
          selectedDayIndex = isTapDayList[i];
        } else {
          isTapDayList[i] = false;
        }
      }
    });
  }

  bool get showButton => selectedHourIndex && selectedDayIndex == true;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        SizedBox(
          height: 300.h,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: List.generate(titles.length, (index) {
              return CustomBoxChooseDay(
                isTapDay: isTapDayList[index],
                onTap: () {
                  handleTapDay(index);
                },
                alignment: Alignment(
                  -1 + (0.5 * index),
                  [-0.4, -0.7, -1, -0.7, -0.4][index].toDouble(),
                ),
                title: titles[index],
                subTitle: subTitles[index],
              );
            }),
          ),
        ),
        SizedBox(
          height: 180.h,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: List.generate(hour.length, (index) {
              return CustomBoxChooseHour(
                isTapHour: isTapHour[index],
                onTap: () {
                  handleTapHour(index);
                },
                alignment: Alignment(
                  [-1, -0.5, 0, 0.5, 1][index].toDouble(),
                  [-0.2, -0.7, -1.1, -0.7, -0.2][index].toDouble(),
                ),
                hour: hour[index],
              );
            }),
          ),
        ),
        if (showButton)
          SizedBox(
            width: double.infinity,
            child: CustomElvatedButton(
              title: kReservation,
              onPressed: () {
                context.push(AppRouter.selectSeatsView);
              },
            ),
          ),
      ],
    );
  }
}
