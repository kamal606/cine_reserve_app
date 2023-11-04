import 'package:cine_reserve_app/core/constant/strings.dart';
import 'package:cine_reserve_app/core/functions/toast.dart';
import 'package:cine_reserve_app/features/home/presentation/blocs/new_in_cinemas/new_in_cinemas_bloc.dart';
import 'package:cine_reserve_app/features/home/presentation/widgets/home_widgets/grid_view_movies/custom_grid_view_now_in_cineams.dart';
import 'package:cine_reserve_app/features/home/presentation/widgets/home_widgets/grid_view_movies/custom_title_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GridViewNowInCinemasBloc extends StatelessWidget {
  const GridViewNowInCinemasBloc({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TitleListViewHome(
          title: kNowCinemas,
        ),
        SizedBox(
          height: 300.h,
          child: BlocConsumer<NowInCinemasBloc, NowInCinemasState>(
            listener: (context, state) {
              if (state is NowInCinemasFailure) {
                toast(message: state.errorMessage);
              }
            },
            builder: (context, state) {
              if (state is NowInCinemasSuccess) {
                return CustomGridViewNowInCinemas(
                  listMovies: state.listMovie,
                );
              } else {
                return const SizedBox();
              }
            },
          ),
        ),
      ],
    );
  }
}
