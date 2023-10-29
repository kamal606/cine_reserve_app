import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCardMovie extends StatelessWidget {
  const CustomCardMovie({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10.r),
        ),
      ),
      height: 120.h,
      width: 100.w,
      child: Image.asset(
        "assets/images/test/Rectangle 7.png",
        fit: BoxFit.fill,
      ),
    );
  }
}
