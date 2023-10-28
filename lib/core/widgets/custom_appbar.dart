import 'package:cine_reserve_app/core/constant/app_color.dart';
import 'package:cine_reserve_app/core/constant/app_fonts.dart';
import 'package:cine_reserve_app/core/constant/app_icons.dart';
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
        titleTextStyle: AppFonts.bold_20,
        centerTitle: true,
        title: Text(
          title,
        ),
        bottom: PreferredSize(
          preferredSize: preferredSize,
          child: SizedBox(
            height: 38.h,
            width: MediaQuery.of(context).size.width - 20.w,
            child: TextFormField(
              style: const TextStyle(color: AppColor.lavenderMist),
              cursorColor: AppColor.lavenderMist.withAlpha(153),
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 5.h),
                  fillColor: AppColor.white.withAlpha(76),
                  filled: true,
                  prefixIconConstraints: const BoxConstraints(),
                  hintText: hintText,
                  hintStyle: AppFonts.regular_17
                      .copyWith(color: AppColor.lavenderMist.withAlpha(153)),
                  prefixIcon: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.w),
                    child: Image.asset(
                      AppIcons.search,
                      color: AppColor.lavenderMist,
                      height: 16.h,
                      width: 16.w,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.w),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.w),
                    ),
                  )),
            ),
          ),
        ));
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight + 40.h);
}
