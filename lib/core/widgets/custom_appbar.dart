import 'package:cine_reserve_app/core/constant/app_color.dart';
import 'package:cine_reserve_app/core/constant/app_fonts.dart';
import 'package:cine_reserve_app/core/utils/router.dart';
import 'package:cine_reserve_app/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    required this.hintText,
    this.readOnly = false,
    this.isOnTapIcon = false,
    this.isOnTap = false,
    this.onTapIcon,
    this.onChanged,
  });
  final String title;
  final String hintText;
  final bool readOnly;
  final bool isOnTapIcon;
  final bool isOnTap;
  final void Function()? onTapIcon;

  final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return AppBar(
        automaticallyImplyLeading: false,
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
            height: 36.h,
            width: MediaQuery.of(context).size.width - 30.w,
            child: CustomTextFormField(
              readOnly: readOnly,
              hintText: hintText,
              onChanged: onChanged,
              onTapIcon: isOnTapIcon
                  ? () {
                      context.push(AppRouter.searchView);
                    }
                  : onTapIcon,
              onTap: isOnTap
                  ? () {
                      context.push(AppRouter.searchView);
                    }
                  : null,
            ),
          ),
        ));
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight + 40.h);
}
