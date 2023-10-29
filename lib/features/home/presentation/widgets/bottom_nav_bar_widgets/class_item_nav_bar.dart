import 'package:cine_reserve_app/core/constant/app_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemBottomNavBar {
  final String nameItem;
  final double sizeItem;
  ItemBottomNavBar({
    required this.nameItem,
  }) : sizeItem = 20.h;

  static List<ItemBottomNavBar> listItemNavBar = [
    ItemBottomNavBar(nameItem: AppIcons.home),
    ItemBottomNavBar(nameItem: AppIcons.movie),
    ItemBottomNavBar(nameItem: AppIcons.ticket),
    ItemBottomNavBar(nameItem: AppIcons.category),
    ItemBottomNavBar(nameItem: AppIcons.profile),
  ];
}
