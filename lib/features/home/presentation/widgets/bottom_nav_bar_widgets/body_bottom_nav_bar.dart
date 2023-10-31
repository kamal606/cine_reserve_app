import 'package:cine_reserve_app/core/constant/app_color.dart';
import 'package:cine_reserve_app/features/home/presentation/widgets/bottom_nav_bar_widgets/class_item_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BodyBottomNavBar extends StatefulWidget {
  const BodyBottomNavBar({super.key});

  @override
  State<BodyBottomNavBar> createState() => _BodyBottomNavBarState();
}

int indexItem = 0;

class _BodyBottomNavBarState extends State<BodyBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ...List.generate(ItemBottomNavBar.listItemNavBar.length, (i) {
            ItemBottomNavBar item = ItemBottomNavBar.listItemNavBar[i];
            return InkWell(
              onTap: () {
                setState(() {
                  indexItem = i;
                });
              },
              child: Container(
                height: 45.h,
                width: 45.w,
                decoration: BoxDecoration(
                    color: indexItem == i
                        ? AppColor.steelBlue
                        : Colors.transparent,
                    shape: BoxShape.circle,
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: indexItem == i
                            ? AppColor.lightBlue
                            : Colors.transparent,
                        offset: const Offset(-0.5, -1.5),
                      ),
                    ]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ColorFiltered(
                      colorFilter: const ColorFilter.srgbToLinearGamma(),
                      child: Image.asset(
                        item.nameItem,
                        height: item.sizeItem,
                        width: item.sizeItem,
                      ),
                    ),
                  ],
                ),
              ),
            );
          })
        ],
      ),
    );
  }
}
