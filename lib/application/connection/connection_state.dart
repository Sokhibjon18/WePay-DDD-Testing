part of 'connection_bloc.dart';

@freezed
class ConnectionState with _$ConnectionState {
  const factory ConnectionState({required Option<bool> connected}) = _ConnectionState;

  factory ConnectionState.initial() => _ConnectionState(connected: none());
}
