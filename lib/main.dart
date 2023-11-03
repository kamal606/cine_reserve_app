import 'package:cine_reserve_app/core/functions/system_chrome.dart';
import 'package:cine_reserve_app/core/utils/bloc_observer.dart';
import 'package:cine_reserve_app/core/utils/dependency_injection.dart' as di;
import 'package:cine_reserve_app/core/utils/router.dart';
import 'package:cine_reserve_app/features/home/presentation/blocs/check_internet/check_internet_bloc.dart';
import 'package:cine_reserve_app/features/home/presentation/blocs/new_in_cinemas/new_in_cinemas_bloc.dart';
import 'package:cine_reserve_app/features/home/presentation/blocs/search_home/search_home_bloc.dart';
import 'package:cine_reserve_app/features/home/presentation/blocs/top_rated/top_rated_movies_bloc.dart';
import 'package:cine_reserve_app/features/home/presentation/blocs/up_coming/up_coming_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.initGetIt();
  Bloc.observer = MyBlocObserver();
  await Future.delayed(const Duration(milliseconds: 500));
  systemChrome();
}

class CineReserveApp extends StatelessWidget {
  const CineReserveApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(411.42857142857144, 843.4285714285714),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) =>
                di.sl<NowInCinemasBloc>()..add(NowInCinemasGetEvent()),
          ),
          BlocProvider(
            create: (context) => di.sl<CheckInternetBloc>(),
          ),
          BlocProvider(
            create: (context) =>
                di.sl<UpComingBloc>()..add(UpComingMoviesEvent()),
          ),
          BlocProvider(
            create: (context) =>
                di.sl<TopRatedMoviesBloc>()..add(TopRatedMoviesGetEvent()),
          ),
          BlocProvider(
            create: (context) => di.sl<SearchHomeBloc>(),
          ),
        ],
        child: MaterialApp.router(
          theme: ThemeData(),
          debugShowCheckedModeBanner: false,
          routerConfig: AppRouter.goRoute,
        ),
      ),
    );
  }
}
