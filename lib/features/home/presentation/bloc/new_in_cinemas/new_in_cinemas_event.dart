part of 'new_in_cinemas_bloc.dart';

sealed class NewInCinemasEvent extends Equatable {
  const NewInCinemasEvent();

  @override
  List<Object> get props => [];
}

class NewInCinemasGetEvent extends NewInCinemasEvent {}
