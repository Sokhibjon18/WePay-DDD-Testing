part of 'form_apartment_bloc.dart';

@freezed
class FormApartmentEvent with _$FormApartmentEvent {
  const factory FormApartmentEvent.initial() = _Initial;
  const factory FormApartmentEvent.initializeStreams() = _InitializeStreams;
  const factory FormApartmentEvent.editingApartment(PublicExpense apartment) = _EditingApartment;
  const factory FormApartmentEvent.nameChanged(String region) = _NameChanged;
  const factory FormApartmentEvent.creatApartment() = _CreateApartment;
  const factory FormApartmentEvent.updateApartment(String uid, String ownerId) = _UpdateApartment;
  const factory FormApartmentEvent.deleteApartment(PublicExpense apartment) = _DeleteApartment;
  const factory FormApartmentEvent.getApartmentUsersAndExpenses(List<PublicExpense> apartments) =
      _GetApartmentUsersAndExpenses;
}
