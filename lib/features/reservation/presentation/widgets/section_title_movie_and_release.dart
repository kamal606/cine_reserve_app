import 'package:cine_reserve_app/core/constant/app_color.dart';
import 'package:cine_reserve_app/core/constant/app_fonts.dart';
import 'package:cine_reserve_app/core/constant/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SectionTitleMovieAndRelaseStrings extends StatelessWidget {
  const SectionTitleMovieAndRelaseStrings({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          kTitleMovie,
          style: AppFonts.regular_12.copyWith(color: AppColor.white),
        ),
        Text(
          " DC Comics superhero Superman, played ",
          style: AppFonts.bold_16.copyWith(color: AppColor.white),
        ),
        SizedBox(
          height: 10.h,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Text(
                "$kReleasedate: 198980-0520",
                style: AppFonts.regular_12.copyWith(color: AppColor.white),
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
            Expanded(
              child: Text(
                "$kGenre: Fantasy, Kids, Musical, Romance",
                style: AppFonts.regular_12.copyWith(color: AppColor.white),
              ),
            ),
          ],
        )
      ],
    );
  }
}
