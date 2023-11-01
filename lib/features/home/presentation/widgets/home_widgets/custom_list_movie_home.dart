import 'package:cine_reserve_app/core/functions/toast.dart';
import 'package:cine_reserve_app/features/home/presentation/bloc/new_in_cinemas/new_in_cinemas_bloc.dart';
import 'package:cine_reserve_app/features/home/presentation/widgets/home_widgets/custom_card_movie.dart';
import 'package:cine_reserve_app/features/home/presentation/widgets/home_widgets/custom_title_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomListViewNowInCinemas extends StatelessWidget {
  const CustomListViewNowInCinemas({
    super.key,
    required this.titleList,
  });
  final String titleList;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleListViewHome(
          title: titleList,
        ),
        SizedBox(
          height: 10.h,
        ),
        SizedBox(
          height: 120.h,
          child: BlocConsumer<NowInCinemasBloc, NowInCinemasState>(
            listener: (context, state) {
              if (state is NowInCinemasFailure) {
                toast(message: state.errorMessage);
              }
            },
            builder: (context, state) {
              if (state is NowInCinemasSuccess) {
                return ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: state.listMovie.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, i) {
                      return Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.w),
                            child: CustomCardMovie(
                              moviesEntity: state.listMovie[i],
                            ),
                          )
                        ],
                      );
                    });
              } else {
                return const SizedBox();
              }
            },
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
      ],
    );
  }
}
