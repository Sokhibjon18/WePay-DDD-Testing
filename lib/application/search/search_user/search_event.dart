part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.search(int userId) = _Search;
  const factory SearchEvent.sendInvitation(int userId, String apartmentId) = _SendInvitation;
}
