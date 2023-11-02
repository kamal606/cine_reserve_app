import 'package:cine_reserve_app/core/constant/strings.dart';
import 'package:cine_reserve_app/core/functions/toast.dart';
import 'package:cine_reserve_app/features/home/domain/entity/genre_string.dart';
import 'package:cine_reserve_app/features/home/presentation/blocs/top_rated/top_rated_movies_bloc.dart';
import 'package:cine_reserve_app/features/home/presentation/widgets/home_widgets/grid_view_movies/custom_card_movie.dart';
import 'package:cine_reserve_app/features/home/presentation/widgets/home_widgets/grid_view_movies/custom_title_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GridViewTopRatedHome extends StatelessWidget {
  const GridViewTopRatedHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TitleListViewHome(
          title: kTopRatedMovies,
        ),
        SizedBox(
          height: 300.h,
          child: BlocConsumer<TopRatedMoviesBloc, TopRatedMoviesState>(
            listener: (context, state) {
              if (state is TopRatedMoviesStateFailure) {
                toast(message: state.errorMessage);
              }
            },
            builder: (context, state) {
              if (state is TopRatedMoviesStateSuccess) {
                return GridView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: state.listMovie.length,
                    padding: EdgeInsets.only(left: 12.w),
                    scrollDirection: Axis.horizontal,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 1 / 3.7,
                    ),
                    itemBuilder: (context, i) {
                      GenreString genre = GenreString();
                      List<String?> genreString =
                          genre.genreStringMethod(genre, state.listMovie[i]);
                      return CustomCardMovie(
                          genreString: genreString,
                          moviesEntity: state.listMovie[i]);
                    });
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
