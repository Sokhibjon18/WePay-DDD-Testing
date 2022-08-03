part of 'form_apartment_bloc.dart';

@freezed
class FormApartmentEvent with _$FormApartmentEvent {
  const factory FormApartmentEvent.initial() = _Initial;
  const factory FormApartmentEvent.initializeStreams() = _InitializeStreams;
  const factory FormApartmentEvent.editingApartment(Apartment apartment) = _EditingApartment;
  const factory FormApartmentEvent.regionChanged(String region) = _RegionChanged;
  const factory FormApartmentEvent.districtChanged(String district) = _DistrictChanged;
  const factory FormApartmentEvent.streetNameChanged(String street) = _StreetNameChanged;
  const factory FormApartmentEvent.houseNumberChanged(String house) = _HouseNumberChanged;
  const factory FormApartmentEvent.flatNumberChanged(String flat) = _FlatNumberChanged;
  const factory FormApartmentEvent.creatApartment() = _CreateApartment;
  const factory FormApartmentEvent.updateApartment(String uid, String ownerId) = _UpdateApartment;
  const factory FormApartmentEvent.deleteApartment(Apartment apartment) = _DeleteApartment;
  const factory FormApartmentEvent.getApartmentUsersAndExpenses(List<Apartment> apartments) =
      _GetApartmentUsersAndExpenses;
}
