import 'package:cine_reserve_app/core/constant/app_color.dart';
import 'package:cine_reserve_app/core/constant/app_fonts.dart';
import 'package:cine_reserve_app/features/home/domain/entity/movie_entity.dart';
import 'package:flutter/material.dart';

class SectionDescription extends StatefulWidget {
  const SectionDescription({super.key, required this.moviesEntity});
  final MoviesEntity moviesEntity;
  @override
  State<SectionDescription> createState() => _SectionDescriptionState();
}

int maxLines = 3;

class _SectionDescriptionState extends State<SectionDescription> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //! section show less
        InkWell(
          onTap: () {
            setState(() {
              maxLines = 3;
            });
          },
          child: RichText(
            maxLines: maxLines,
            text: TextSpan(
              children: [
                TextSpan(
                  style: AppFonts.regular_12
                      .copyWith(color: AppColor.white.withOpacity(0.6)),
                  text: widget.moviesEntity.overviewMovie,
                ),
                maxLines == 20
                    ? TextSpan(
                        text: "  Show Less",
                        style: AppFonts.semiBold_12
                            .copyWith(color: AppColor.white),
                      )
                    : const TextSpan(text: ""),
              ],
            ),
          ),
        ),
        //! section Read more
        maxLines <= 3
            ? InkWell(
                onTap: () {
                  setState(() {
                    maxLines = 20;
                  });
                },
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        style: AppFonts.semiBold_12
                            .copyWith(color: AppColor.white),
                        text: "Read More",
                      ),
                    ],
                  ),
                ),
              )
            : const SizedBox(),
      ],
    );
  }
}
