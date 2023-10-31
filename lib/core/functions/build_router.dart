import 'package:cine_reserve_app/core/widgets/no_internet_view.dart';
import 'package:cine_reserve_app/features/home/presentation/bloc/check_internet/check_internet_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

GoRoute buildRouter({
  required String path,
  required GoRouterWidgetBuilder builder,
}) {
  return GoRoute(
    path: path,
    builder: (context, state) {
      return BlocBuilder<CheckInternetBloc, CheckInternetState>(
        builder: (context, stateInternet) {
          if (stateInternet is OnlineState) {
            return builder(context, state);
          } else {
            return const NoInternetView();
          }
        },
      );
    },
  );
}