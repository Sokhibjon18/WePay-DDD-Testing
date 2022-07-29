part of 'connection_bloc.dart';

@freezed
class ConnectionEvent with _$ConnectionEvent {
  const factory ConnectionEvent.listen() = _Listen;
  const factory ConnectionEvent.connected() = _Connected;
  const factory ConnectionEvent.disconnected() = _Disconnected;
}
