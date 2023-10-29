import 'package:cine_reserve_app/features/home/presentation/widgets/custom_card_movie.dart';
import 'package:cine_reserve_app/features/home/presentation/widgets/custom_title_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomListViewCardMovie extends StatelessWidget {
  const CustomListViewCardMovie({super.key, required this.titleList});
  final String titleList;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleListViewHome(
          title: titleList,
        ),
        SizedBox(
          height: 10.h,
        ),
        SizedBox(
          height: 120.h,
          child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, i) {
                return Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 12.w),
                      child: const CustomCardMovie(),
                    )
                  ],
                );
              }),
        ),
        SizedBox(
          height: 10.h,
        ),
      ],
    );
  }
}
