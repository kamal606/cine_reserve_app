import 'package:cine_reserve_app/core/constant/app_color.dart';
import 'package:cine_reserve_app/core/constant/app_fonts.dart';
import 'package:cine_reserve_app/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, required this.title, required this.hintText});
  final String title;
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        titleTextStyle:
            AppFonts.bold_20.copyWith(color: AppColor.white.withAlpha(219)),
        centerTitle: true,
        title: Text(
          title,
        ),
        bottom: PreferredSize(
          preferredSize: preferredSize,
          child: SizedBox(
            height: 34.h,
            width: MediaQuery.of(context).size.width - 30.w,
            child: CustomTextFormField(hintText: hintText),
          ),
        ));
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight + 40.h);
}
