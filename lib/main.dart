import 'package:cine_reserve_app/core/functions/system_chrome.dart';
import 'package:cine_reserve_app/core/utils/dependency_injection.dart' as di;
import 'package:cine_reserve_app/core/utils/router.dart';
import 'package:cine_reserve_app/features/home/presentation/bloc/new_in_cinemas/new_in_cinemas_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.initGetIt();
  systemChrome();
}

class CineReserveApp extends StatelessWidget {
  const CineReserveApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) =>
                di.sl<NewInCinemasBloc>()..add(NewInCinemasGetEvent()),
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
