import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';
import 'package:we_pay/domain/apartment/apartment_failure.dart';
import 'package:we_pay/domain/apartment/i_apartment_repository.dart';
import 'package:we_pay/domain/apartment/value_objects.dart';
import 'package:we_pay/domain/models/apartment/apartment.dart';

part 'crud_apartment_event.dart';
part 'crud_apartment_state.dart';
part 'crud_apartment_bloc.freezed.dart';

class CRUDApartmentBloc extends Bloc<CRUDApartmentEvent, CRUDApartmentState> {
  final IApartmentRepository _repository;

  CRUDApartmentBloc(this._repository) : super(CRUDApartmentState.initial()) {
    on<_RegionChanged>((event, emit) {
      emit(state.copyWith(
        regionName: Address(event.region),
        creationFailure: none(),
      ));
    });
    on<_DistrictChanged>((event, emit) {
      emit(state.copyWith(districtName: Address(event.district), creationFailure: none()));
    });
    on<_StreetNameChanged>((event, emit) {
      emit(state.copyWith(streetName: Address(event.street), creationFailure: none()));
    });
    on<_HouseNumberChanged>((event, emit) {
      emit(state.copyWith(houseNumber: HouseNumber(event.house), creationFailure: none()));
    });
    on<_FlatNumberChanged>((event, emit) {
      emit(state.copyWith(flatNumber: HouseNumber(event.flat), creationFailure: none()));
    });
    on<_CreateApartment>((event, emit) async {
      Either<ApartmentFailure, Unit>? failureOrSuccess;

      final validateRegion = state.regionName.isValid();
      final validateDistrict = state.districtName.isValid();
      final validateStreet = state.streetName.isValid();
      final validateHouseNumber = state.houseNumber.isValid();

      if (validateHouseNumber && validateStreet && validateDistrict && validateRegion) {
        emit(state.copyWith(
          loading: true,
          creationFailure: none(),
        ));

        failureOrSuccess = await _repository.create(
          Apartment(
            region: state.regionName.getRight(),
            district: state.districtName.getRight(),
            street: state.streetName.getRight(),
            houseNumber: state.houseNumber.getRight(),
            flatNumber: state.flatNumber.getRight(),
          ),
        );
      }

      emit(state.copyWith(
        loading: false,
        showErrorMessage: true,
        creationFailure: optionOf(failureOrSuccess),
      ));
    });
  }
}
