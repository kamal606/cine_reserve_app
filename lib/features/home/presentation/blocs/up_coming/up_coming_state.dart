part of 'up_coming_bloc.dart';

sealed class UpComingState extends Equatable {
  const UpComingState();

  @override
  List<Object> get props => [];
}

final class UpComingStateLoading extends UpComingState {}

final class UpComingStateSuccess extends UpComingState {
  final List<MoviesEntity> listMovie;

  const UpComingStateSuccess({required this.listMovie});
  @override
  List<Object> get props => [listMovie];
}

final class UpComingStateFailure extends UpComingState {
  final String errorMessage;

  const UpComingStateFailure({required this.errorMessage});
  @override
  List<Object> get props => [errorMessage];
}
