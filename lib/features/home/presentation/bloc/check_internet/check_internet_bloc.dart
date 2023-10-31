import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:equatable/equatable.dart';

part 'check_internet_event.dart';
part 'check_internet_state.dart';

class CheckInternetBloc extends Bloc<CheckInternetEvent, CheckInternetState> {
  StreamSubscription? streamSubscription;
  CheckInternetBloc() : super(OnlineState()) {
    streamSubscription = Connectivity().onConnectivityChanged.listen((result) {
      if (result != ConnectivityResult.none) {
        add(OnlineEvent());
      } else {
        add(OfflineEvent());
      }
    });
    on<OfflineEvent>(_onOfflineEvent);
    on<OnlineEvent>(_onOnlineEvent);
  }

// event offline
  Future<void> _onOfflineEvent(
    OfflineEvent event,
    Emitter<CheckInternetState> emit,
  ) async {
    emit(OfflineState());
  }

// event online
  Future<void> _onOnlineEvent(
    OnlineEvent event,
    Emitter<CheckInternetState> emit,
  ) async {
    emit(OnlineState());
  }

  @override
  Future<void> close() {
    streamSubscription?.cancel();

    return super.close();
  }
}
