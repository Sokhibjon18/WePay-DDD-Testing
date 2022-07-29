import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'connection_event.dart';
part 'connection_state.dart';
part 'connection_bloc.freezed.dart';

@injectable
class ConnectionBloc extends Bloc<ConnectionEvent, ConnectionState> {
  ConnectionBloc() : super(ConnectionState.initial()) {
    Connectivity con = Connectivity();
    on<_Listen>((event, emit) async {
      final conState = await con.checkConnectivity();
      addConnectionResult(conState);
      con.onConnectivityChanged.listen((connection) {
        addConnectionResult(connection);
      });
    });
    on<_Connected>((event, emit) {
      emit(state.copyWith(connected: optionOf(true)));
    });
    on<_Disconnected>((event, emit) {
      emit(state.copyWith(connected: optionOf(false)));
    });
  }

  void addConnectionResult(ConnectivityResult connection) {
    switch (connection) {
      case ConnectivityResult.wifi:
        add(const ConnectionEvent.connected());
        break;
      case ConnectivityResult.ethernet:
        add(const ConnectionEvent.connected());
        break;
      case ConnectivityResult.mobile:
        add(const ConnectionEvent.connected());
        break;
      default:
        add(const ConnectionEvent.disconnected());
        break;
    }
  }
}
