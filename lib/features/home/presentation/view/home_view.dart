import 'package:cine_reserve_app/core/constant/strings.dart';
import 'package:cine_reserve_app/core/widgets/custom_appbar.dart';
import 'package:cine_reserve_app/features/home/presentation/blocs/new_in_cinemas/new_in_cinemas_bloc.dart';
import 'package:cine_reserve_app/features/home/presentation/widgets/home_widgets/body_home_view.dart';
import 'package:cine_reserve_app/features/home/presentation/widgets/bottom_nav_bar_widgets/custom_bottom_nav_bar.dart';
import 'package:cine_reserve_app/features/home/presentation/widgets/shimmer_loading/body_shimmer_loading_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      bottomNavigationBar: const CustomBottomNavBar(),
      appBar: const CustomAppBar(
        title: kchooseMovie,
        hintText: kSearch,
        readOnly: true,
        isOnTap: true,
      ),
      body: BlocBuilder<NowInCinemasBloc, NowInCinemasState>(
        builder: (context, state) {
          if (state is NowInCinemasLoading) {
            return const ShimmerLoadingHome();
          }
          return const HomeViewBody();
        },
      ),
    );
  }
}
