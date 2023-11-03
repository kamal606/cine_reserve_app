import 'package:cine_reserve_app/core/constant/app_assets_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemBottomNavBar {
  final String nameItem;
  final double sizeItem;
  ItemBottomNavBar({
    required this.nameItem,
  }) : sizeItem = 20.h;

  static List<ItemBottomNavBar> listItemNavBar = [
    ItemBottomNavBar(nameItem: AppAssetsIcons.home),
    ItemBottomNavBar(nameItem: AppAssetsIcons.movie),
    ItemBottomNavBar(nameItem: AppAssetsIcons.ticket),
    ItemBottomNavBar(nameItem: AppAssetsIcons.category),
    ItemBottomNavBar(nameItem: AppAssetsIcons.profile),
  ];
}
