import 'package:cine_reserve_app/core/utils/api_service.dart';
import 'package:cine_reserve_app/features/home/data/data_source/remote_data_source/new_in_cinema_remote_data_source.dart';
import 'package:cine_reserve_app/features/home/data/repository_implements/new_in_cinemas_repo_impl.dart';
import 'package:cine_reserve_app/features/home/domain/repository/new_in_cinemas_repo.dart';
import 'package:cine_reserve_app/features/home/domain/use_cases/new_in_cinemas_use_case.dart';
import 'package:cine_reserve_app/features/home/presentation/bloc/check_internet/check_internet_bloc.dart';
import 'package:cine_reserve_app/features/home/presentation/bloc/new_in_cinemas/new_in_cinemas_bloc.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> initGetIt() async {
  //! Bloc

  sl.registerFactory(() => NewInCinemasBloc(
      checkInternetBloc: sl.call(), newInCinemasUseCase: sl.call()));
  sl.registerFactory(() => CheckInternetBloc());
  //! Data Sources
  sl.registerLazySingleton(() => NewInCinemasRemoteImpl(apiService: sl.call()));

  //! Repository
  sl.registerLazySingleton<NewInCinemasRepo>(
      () => NewInCinemasRepoImpl(newInCinemasRemoteImpl: sl.call()));

  //! Use Cases
  sl.registerLazySingleton(
      () => NewInCinemasUseCase(newInCinemasRepo: sl.call()));

  //! Core
  sl.registerLazySingleton<ApiService>(() => ApiService(sl.call()));

  //!External

  sl.registerLazySingleton<Dio>(() => Dio());
}
