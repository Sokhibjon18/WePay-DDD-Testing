part of 'request_bloc.dart';

@freezed
class RequestEvent with _$RequestEvent {
  const factory RequestEvent.started() = _Started;
  const factory RequestEvent.sendJoinRequest(Apartment apartment) = _SendJoinRequest;
  const factory RequestEvent.acceptRequest(RequestToJoin request) = _AcceptRequest;
  const factory RequestEvent.rejectRequest(RequestToJoin request) = _RejectRequest;
}
