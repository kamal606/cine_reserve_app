part of 'new_in_cinemas_bloc.dart';

sealed class NowInCinemasEvent extends Equatable {
  const NowInCinemasEvent();

  @override
  List<Object> get props => [];
}

class NowInCinemasGetEvent extends NowInCinemasEvent {}
