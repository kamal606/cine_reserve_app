import 'package:cine_reserve_app/core/constant/app_color.dart';
import 'package:cine_reserve_app/core/constant/app_linear.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBoxChooseHour extends StatelessWidget {
  const CustomBoxChooseHour({
    super.key,
    required this.alignment,
  });
  final AlignmentGeometry alignment;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: FractionallySizedBox(
        widthFactor: 65.w / MediaQuery.of(context).size.width,
        heightFactor: 40.h / 150.h,
        child: Container(
          decoration: BoxDecoration(
              gradient: AppLinear.linearReservation,
              borderRadius: BorderRadius.circular(12.r),
              boxShadow: const [
                BoxShadow(
                  color: AppColor.lightBlue,
                  offset: Offset(-1, -1),
                )
              ]),
        ),
      ),
    );
  }
}
