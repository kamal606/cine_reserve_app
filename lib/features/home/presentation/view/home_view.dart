import 'package:cine_reserve_app/core/widgets/custom_appbar.dart';
import 'package:cine_reserve_app/features/home/presentation/widgets/body_home_view.dart';

import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppBar(
        title: "Choose Movie",
        hintText: "Search",
      ),
      body: HomeViewBody(),
    );
  }
}
