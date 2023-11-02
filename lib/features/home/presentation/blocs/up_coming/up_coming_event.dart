part of 'up_coming_bloc.dart';

sealed class UpComingEvent extends Equatable {
  const UpComingEvent();

  @override
  List<Object> get props => [];
}

class UpComingMoviesEvent extends UpComingEvent {}
