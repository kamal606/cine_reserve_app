import 'package:cine_reserve_app/core/constant/app_color.dart';
import 'package:cine_reserve_app/core/constant/app_fonts.dart';
import 'package:flutter/material.dart';

class SectionDescription extends StatefulWidget {
  const SectionDescription({super.key});

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
                  text:
                      "The Little Merle Mermaid is the belovedle Mermaid is the belovedle Mermaid is the belovedle Mermaid is the belovedmaid is the beloved story of Ariel, a beautiful and spirited young mermaid with a thirst for adventure. The youngest of King Triton’s daughters and the most defiant, Ariel longs to find out more about the world beyond the sea and, while visiting the surface, falls for the dashing Prince Eric. While mermaids are forbidden to interact with humans, Ariel must follow her heart. She makes a deal with the evil sea witch, Ursula, which gives her a chance to experience life on land but ultimately places her life – and her father’s crown – in jeopardy.",
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
