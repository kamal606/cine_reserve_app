import 'package:cine_reserve_app/features/home/presentation/view/home_view.dart';
import 'package:cine_reserve_app/features/splash/presentation/view/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const String homeView = "/HomeView";

  static GoRouter goRoute = GoRouter(routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: homeView,
      builder: (context, state) => const HomeView(),
    ),
  ]);
}
