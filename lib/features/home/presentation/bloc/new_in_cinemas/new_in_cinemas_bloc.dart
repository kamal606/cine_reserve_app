import 'dart:async';

import 'package:cine_reserve_app/features/home/domain/entity/movie_entity.dart';
import 'package:cine_reserve_app/features/home/domain/use_cases/new_in_cinemas_use_case.dart';
import 'package:cine_reserve_app/features/home/presentation/bloc/check_internet/check_internet_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'new_in_cinemas_event.dart';
part 'new_in_cinemas_state.dart';

class NewInCinemasBloc extends Bloc<NewInCinemasEvent, NewInCinemasState> {
  final NewInCinemasUseCase newInCinemasUseCase;
  StreamSubscription? streamSubscription;
  final CheckInternetBloc checkInternetBloc;
  NewInCinemasBloc(
      {required this.newInCinemasUseCase, required this.checkInternetBloc})
      : super(NewInCinemasLoading()) {
    streamSubscription = checkInternetBloc.stream.listen((state) {
      if (state is OnlineState) {
        add(NewInCinemasGetEvent());
      }
    });
    on<NewInCinemasGetEvent>(_onNewInCinemasGetEvent);
  }

  Future<void> _onNewInCinemasGetEvent(
    NewInCinemasGetEvent event,
    Emitter<NewInCinemasState> emit,
  ) async {
    emit(NewInCinemasLoading());
    final results = await newInCinemasUseCase.getNewInCinemas();
    results.fold((l) => emit(NewInCinemasFailure(errorMessage: l.message)),
        (r) => emit(NewInCinemasSuccess(listMovie: r)));
  }
}
