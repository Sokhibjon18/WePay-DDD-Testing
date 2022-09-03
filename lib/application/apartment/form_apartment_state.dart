part of 'form_apartment_bloc.dart';

@freezed
class FormApartmentState with _$FormApartmentState {
  const factory FormApartmentState({
    required Address name,
    required bool loading,
    required bool showErrorMessage,
    required Option<Either<ApartmentFailure, Unit>> creationFailure,
    required Option<Either<ValueFailure, PublicExpense>> editOptions,
    required Option<Either<ApartmentFailure, Unit>> deleteOption,
  }) = _AddingApartmentState;

  factory FormApartmentState.initial() => FormApartmentState(
        name: Address(''),
        loading: false,
        showErrorMessage: false,
        creationFailure: none(),
        editOptions: none(),
        deleteOption: none(),
      );

  factory FormApartmentState.edit(PublicExpense apartment) => FormApartmentState(
        name: Address(apartment.name),
        loading: false,
        showErrorMessage: false,
        creationFailure: none(),
        editOptions: none(),
        deleteOption: none(),
      );
}
