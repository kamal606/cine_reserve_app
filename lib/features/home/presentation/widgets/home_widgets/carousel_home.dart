import 'package:carousel_slider/carousel_slider.dart';
import 'package:cine_reserve_app/core/constant/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCarouselHome extends StatefulWidget {
  const CustomCarouselHome({super.key});

  @override
  State<CustomCarouselHome> createState() => _CustomCarouselHomeState();
}

List<String> itemCarousel = [
  "assets/images/test/Carousel Banners.png",
  "assets/images/test/Rectangle 17.png",
  "assets/images/test/Rectangle 17.png"
];
int indexList = 0;

class _CustomCarouselHomeState extends State<CustomCarouselHome> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 125.h,
            viewportFraction: 1.0,
            autoPlayCurve: Curves.fastOutSlowIn,
            autoPlay: true,
            onPageChanged: (i, _) {
              setState(() {
                indexList = i;
              });
            },
          ),
          items: itemCarousel
              .map((e) => Builder(builder: (context) {
                    return Column(
                      children: [
                        Expanded(
                          child: Image.asset(
                            e,
                            fit: BoxFit.fill,
                            width: MediaQuery.of(context).size.width,
                          ),
                        ),
                      ],
                    );
                  }))
              .toList(),
        ),
        SizedBox(
          height: 5.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(itemCarousel.length, (index) {
              return Padding(
                padding: EdgeInsets.only(right: 20.h),
                child: CircleAvatar(
                  radius: 4.r,
                  backgroundColor: index == indexList
                      ? AppColor.white
                      : AppColor.white.withAlpha(86),
                ),
              );
            }),
          ],
        )
      ],
    );
  }
}
