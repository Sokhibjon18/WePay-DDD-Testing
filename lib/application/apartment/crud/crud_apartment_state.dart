part of 'crud_apartment_bloc.dart';

@freezed
class CRUDApartmentState with _$CRUDApartmentState {
  const factory CRUDApartmentState({
    required Address regionName,
    required Address districtName,
    required Address streetName,
    required HouseNumber houseNumber,
    required HouseNumber flatNumber,
    required bool loading,
    required bool showErrorMessage,
    required Option creationFailure,
  }) = _AddingApartmentState;

  factory CRUDApartmentState.initial() => CRUDApartmentState(
        regionName: Address(''),
        districtName: Address(''),
        streetName: Address(''),
        houseNumber: HouseNumber(''),
        flatNumber: HouseNumber(''),
        loading: false,
        showErrorMessage: false,
        creationFailure: none(),
      );
}
