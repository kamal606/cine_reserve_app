import 'package:cine_reserve_app/core/functions/build_router.dart';
import 'package:cine_reserve_app/features/home/presentation/view/home_view.dart';
import 'package:cine_reserve_app/features/splash/presentation/view/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const String homeView = "/HomeView";

  static GoRouter goRoute = GoRouter(routes: [
    buildRouter(
      path: "/",
      builder: (context, state) => const SplashView(),
    ),
    buildRouter(
      path: "/HomeView",
      builder: (context, state) => const HomeView(),
    ),
  ]);
}
