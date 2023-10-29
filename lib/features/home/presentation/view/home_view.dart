import 'package:cine_reserve_app/core/constant/strings.dart';
import 'package:cine_reserve_app/core/widgets/custom_appbar.dart';
import 'package:cine_reserve_app/features/home/presentation/widgets/body_home_view.dart';
import 'package:cine_reserve_app/features/home/presentation/widgets/bottom_nav_bar_widgets/custom_bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      extendBodyBehindAppBar: true,
      bottomNavigationBar: CustomBottomNavBar(),
      appBar: CustomAppBar(
        title: kchooseMovie,
        hintText: kSearch,
      ),
      body: HomeViewBody(),
    );
  }
}
