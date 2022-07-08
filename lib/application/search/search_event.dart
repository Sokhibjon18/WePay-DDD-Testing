part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.search(String text) = _Search;
  const factory SearchEvent.showAllApartment() = _ShowAllApartment;
}
