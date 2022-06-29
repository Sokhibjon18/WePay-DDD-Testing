part of 'form_apartment_bloc.dart';

@freezed
class FormApartmentState with _$FormApartmentState {
  const factory FormApartmentState({
    required Address regionName,
    required Address districtName,
    required Address streetName,
    required HouseNumber houseNumber,
    required HouseNumber flatNumber,
    required bool loading,
    required bool showErrorMessage,
    required Option<Either<ApartmentFailure, Unit>> creationFailure,
  }) = _AddingApartmentState;

  factory FormApartmentState.initial() => FormApartmentState(
        regionName: Address(''),
        districtName: Address(''),
        streetName: Address(''),
        houseNumber: HouseNumber(''),
        flatNumber: HouseNumber(''),
        loading: false,
        showErrorMessage: false,
        creationFailure: none(),
      );

  factory FormApartmentState.edit(Apartment apartment) => FormApartmentState(
        regionName: Address(apartment.region),
        districtName: Address(apartment.district),
        streetName: Address(apartment.street),
        houseNumber: HouseNumber(apartment.houseNumber),
        flatNumber: HouseNumber(apartment.flatNumber),
        loading: false,
        showErrorMessage: false,
        creationFailure: none(),
      );
}
