import 'package:cine_reserve_app/features/reservation/presentation/widgets/custom_box_choose_hour.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomListChooseHour extends StatelessWidget {
  const CustomListChooseHour({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180.h,
      width: MediaQuery.of(context).size.width,
      child: const Stack(
        children: [
          CustomBoxChooseHour(alignment: Alignment(1, -0.2)),
          CustomBoxChooseHour(alignment: Alignment(-0.5, -0.7)),
          CustomBoxChooseHour(alignment: Alignment(0, -1.1)),
          CustomBoxChooseHour(alignment: Alignment(0.5, -0.7)),
          CustomBoxChooseHour(alignment: Alignment(-1, -0.2)),
        ],
      ),
    );
  }
}
