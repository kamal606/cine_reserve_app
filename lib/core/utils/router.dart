import 'package:cine_reserve_app/core/functions/build_router.dart';
import 'package:cine_reserve_app/features/home/presentation/blocs/new_in_cinemas/new_in_cinemas_bloc.dart';
import 'package:cine_reserve_app/features/home/presentation/view/home_view.dart';
import 'package:cine_reserve_app/features/home/presentation/view/search_home_view.dart';
import 'package:cine_reserve_app/features/home/presentation/widgets/shimmer_loading/body_shimmer_loading_home.dart';
import 'package:cine_reserve_app/features/splash/presentation/view/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const String homeView = "/HomeView";
  static const String searchView = "/SearchView";

  static GoRouter goRoute = GoRouter(routes: [
    buildRouter(
      path: "/",
      builder: (context, state) => const SplashView(),
    ),
    buildRouter(
      path: homeView,
      builder: (context, state) =>
          BlocBuilder<NowInCinemasBloc, NowInCinemasState>(
        builder: (context, state) {
          if (state is NowInCinemasLoading) {
            return const ShimmerLoadingHome();
          } else {
            return const HomeView();
          }
        },
      ),
    ),
    buildRouter(
      path: searchView,
      builder: (context, state) => const SearchHomeView(),
    ),
  ]);
}
