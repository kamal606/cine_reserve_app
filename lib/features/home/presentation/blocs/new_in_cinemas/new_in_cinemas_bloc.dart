import 'dart:async';
import 'package:cine_reserve_app/features/home/domain/entity/movie_entity.dart';
import 'package:cine_reserve_app/features/home/domain/use_cases/now_in_cinemas_use_case.dart';
import 'package:cine_reserve_app/features/home/presentation/blocs/check_internet/check_internet_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'new_in_cinemas_event.dart';
part 'new_in_cinemas_state.dart';

class NowInCinemasBloc extends Bloc<NowInCinemasEvent, NowInCinemasState> {
  final NowInCinemasUseCase newInCinemasUseCase;
  StreamSubscription<CheckInternetState>? streamSubscription;
  final CheckInternetBloc checkInternetBloc;
  NowInCinemasBloc(
      {required this.newInCinemasUseCase, required this.checkInternetBloc})
      : super(NowInCinemasLoading()) {
    // stream to listen internet
    streamSubscription = checkInternetBloc.stream.listen((state) {
      if (state is OnlineState) {
        add(NowInCinemasGetEvent());
      }
    });
    on<NowInCinemasGetEvent>(_onNewInCinemasGetEvent);
  }

  Future<void> _onNewInCinemasGetEvent(
    NowInCinemasGetEvent event,
    Emitter<NowInCinemasState> emit,
  ) async {
    final results = await newInCinemasUseCase.getNowInCinemas();
    results.fold((l) => emit(NowInCinemasFailure(errorMessage: l.message)),
        (r) => emit(NowInCinemasSuccess(listMovie: r)));
  }

  @override
  Future<void> close() {
    streamSubscription!.cancel();
    return super.close();
  }
}
