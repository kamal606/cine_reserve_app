import 'package:cached_network_image/cached_network_image.dart';
import 'package:cine_reserve_app/core/constant/strings.dart';
import 'package:cine_reserve_app/features/home/domain/entity/movie_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCardMovie extends StatelessWidget {
  const CustomCardMovie({super.key, required this.moviesEntity});
  final MoviesEntity moviesEntity;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.r),
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: CachedNetworkImage(
          imageUrl: "$kBaseImage${moviesEntity.posterPathMovie}",
          fit: BoxFit.fill,
          errorWidget: (context, url, error) {
            return const Icon(Icons.error);
          },
        ),
      ),
    );
  }
}
