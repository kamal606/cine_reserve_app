part of 'new_in_cinemas_bloc.dart';

sealed class NewInCinemasState extends Equatable {
  const NewInCinemasState();

  @override
  List<Object> get props => [];
}

final class NewInCinemasLoading extends NewInCinemasState {}

final class NewInCinemasSuccess extends NewInCinemasState {
  final List<MoviesEntity> listMovie;

  const NewInCinemasSuccess({required this.listMovie});
  @override
  List<Object> get props => [listMovie];
}

final class NewInCinemasFailure extends NewInCinemasState {
  final String errorMessage;

  const NewInCinemasFailure({required this.errorMessage});
  @override
  List<Object> get props => [errorMessage];
}
