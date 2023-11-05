import 'package:cine_reserve_app/core/constant/app_color.dart';
import 'package:cine_reserve_app/core/constant/app_fonts.dart';
import 'package:cine_reserve_app/core/constant/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SectionTitleMovieAndGenreStrings extends StatelessWidget {
  const SectionTitleMovieAndGenreStrings({
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
          height: 2.h,
        ),
        Text(
          "$kGenre: Fantasy, Kids, Musical, Romance",
          style: AppFonts.regular_12.copyWith(color: AppColor.white),
        ),
      ],
    );
  }
}
