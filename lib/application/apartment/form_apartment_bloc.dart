import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:we_pay/domain/apartment/apartment_failure.dart';
import 'package:we_pay/domain/apartment/i_apartment_repository.dart';
import 'package:we_pay/domain/apartment/value_objects.dart';
import 'package:we_pay/domain/models/apartment/apartment.dart';
import 'package:we_pay/domain/models/request/request.dart';
import 'package:we_pay/domain/search/search_failure.dart';

part 'form_apartment_event.dart';
part 'form_apartment_state.dart';
part 'form_apartment_bloc.freezed.dart';

@injectable
class FormApartmentBloc extends Bloc<FormApartmentEvent, FormApartmentState> {
  final IApartmentRepository _repository;

  StreamController<Either<ApartmentFailure, List<Apartment>>> apartmentStream = StreamController();
  StreamController<Either<SearchFailure, List<RequestToJoin>>> requestStream = StreamController();

  FormApartmentBloc(this._repository) : super(FormApartmentState.initial()) {
    apartmentStream.addStream(_repository.watchAll());
    requestStream.addStream(_repository.watchRequests());
    on<_Initial>((event, emit) {
      emit(FormApartmentState.initial());
    });
    on<_RegionChanged>((event, emit) {
      emit(state.copyWith(regionName: Address(event.region), creationFailure: none()));
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
    on<_EditingApartment>((event, emit) {
      emit(FormApartmentState.edit(event.apartment));
    });
    on<_UpdateApartment>((event, emit) async {
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

        failureOrSuccess = await _repository.update(
          Apartment(
            uid: event.uid,
            region: state.regionName.getRight(),
            district: state.districtName.getRight(),
            street: state.streetName.getRight(),
            houseNumber: state.houseNumber.getRight(),
            flatNumber: state.flatNumber.isValid() ? state.flatNumber.getRight() : '',
          ),
        );
      }

      emit(state.copyWith(
        loading: false,
        showErrorMessage: true,
        creationFailure: optionOf(failureOrSuccess),
      ));
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
            flatNumber: state.flatNumber.isValid() ? state.flatNumber.getRight() : '',
          ),
        );
      }

      emit(state.copyWith(
        loading: false,
        showErrorMessage: true,
        creationFailure: optionOf(failureOrSuccess),
      ));
    });
    on<_DeleteApartment>((event, emit) async {
      Either<ApartmentFailure, Unit>? failureOrSuccess;

      emit(state.copyWith(
        loading: true,
        creationFailure: none(),
      ));

      failureOrSuccess = await _repository.delete(event.apartment);

      emit(state.copyWith(
        loading: false,
        showErrorMessage: true,
        creationFailure: optionOf(failureOrSuccess),
      ));
    });
  }

  // @override
  // Future<void> close() {
  //   apartmentStream.close();
  //   return super.close();
  // }
}
