import 'package:cine_reserve_app/features/home/domain/entity/movie_entity.dart';
import 'package:cine_reserve_app/features/home/presentation/widgets/search_widgets/icon_button_search.dart';
import 'package:cine_reserve_app/features/home/presentation/widgets/search_widgets/title_search_result.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RowResultSearch extends StatelessWidget {
  const RowResultSearch({super.key, required this.moviesEntity});
  final MoviesEntity moviesEntity;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TitleResultSearch(moviesEntity: moviesEntity),
          const IconButtonSearch(),
        ],
      ),
    );
  }
}
