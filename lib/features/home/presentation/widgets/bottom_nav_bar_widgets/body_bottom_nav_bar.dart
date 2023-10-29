import 'package:cine_reserve_app/features/home/presentation/widgets/bottom_nav_bar_widgets/class_item_nav_bar.dart';
import 'package:flutter/material.dart';

class BodyBottomNavBar extends StatelessWidget {
  const BodyBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ...List.generate(ItemBottomNavBar.listItemNavBar.length, (i) {
          ItemBottomNavBar item = ItemBottomNavBar.listItemNavBar[i];
          return Image.asset(
            item.nameItem,
            height: item.sizeItem,
            width: item.sizeItem,
          );
        })
      ],
    );
  }
}
