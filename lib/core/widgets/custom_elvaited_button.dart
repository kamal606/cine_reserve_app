import 'package:cine_reserve_app/core/constant/app_fonts.dart';
import 'package:cine_reserve_app/core/constant/app_linear.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomElvatedButton extends StatelessWidget {
  const CustomElvatedButton({super.key, required this.title, this.onPressed});
  final String title;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 38.h,
      decoration: BoxDecoration(
          gradient: AppLinear.linearButton,
          borderRadius: BorderRadius.circular(10.r)),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
          ),
          onPressed: onPressed,
          child: Text(
            title,
            style: AppFonts.bold_12,
          )),
    );
  }
}
