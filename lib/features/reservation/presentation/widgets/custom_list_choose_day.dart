import 'package:cine_reserve_app/features/reservation/presentation/widgets/custom_box_choose_day.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomListChooseDay extends StatelessWidget {
  const CustomListChooseDay({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250.h,
      width: MediaQuery.of(context).size.width,
      child: const Stack(
        children: [
          CustomBoxChooseDay(alignment: Alignment(-1, -0.4)),
          CustomBoxChooseDay(alignment: Alignment(-0.5, -0.7)),
          CustomBoxChooseDay(alignment: Alignment(0, -1)),
          CustomBoxChooseDay(alignment: Alignment(0.5, -0.7)),
          CustomBoxChooseDay(alignment: Alignment(1, -0.4)),
        ],
      ),
    );
  }
}
