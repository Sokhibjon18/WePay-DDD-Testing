import 'dart:async';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:we_pay/domain/apartment/apartment_failure.dart';
import 'package:we_pay/domain/apartment/i_apartment_repository.dart';
import 'package:we_pay/domain/apartment/value_objects.dart';
import 'package:we_pay/domain/core/value_failure.dart';
import 'package:we_pay/domain/models/apartment/apartment.dart';
import 'package:we_pay/domain/models/current_date_expense.dart';
import 'package:we_pay/domain/models/request/request.dart';
import 'package:we_pay/domain/models/roommates.dart';
import 'package:we_pay/domain/search/search_failure.dart';

part 'form_apartment_event.dart';
part 'form_apartment_state.dart';
part 'form_apartment_bloc.freezed.dart';

@injectable
class FormApartmentBloc extends Bloc<FormApartmentEvent, FormApartmentState> {
  final IApartmentRepository _repository;

  StreamController<Either<ApartmentFailure, List<Apartment>>> apartmentStream =
      StreamController.broadcast();
  StreamController<List<Roommates>> roommates = StreamController.broadcast();
  StreamController<List<CurrentDateExpense>> expenses = StreamController.broadcast();
  StreamController<Either<SearchFailure, List<RequestToJoin>>> requestStream =
      StreamController.broadcast();

  FormApartmentBloc(this._repository) : super(FormApartmentState.initial()) {
    on<_Initial>((event, emit) async {
      apartmentStream.addStream(_repository.watchAll());
      requestStream.addStream(_repository.watchRequests());
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
    on<_EditingApartment>((event, emit) async {
      final isOwner = await _repository.isUserOwnerOf(event.apartment);
      emit(state.copyWith(editOptions: optionOf(isOwner), loading: true));
      isOwner.fold(
        (f) => null,
        (u) => emit(FormApartmentState.edit(event.apartment)),
      );
      emit(state.copyWith(editOptions: none(), loading: false));
    });
    on<_GetApartmentUsersAndExpenses>((event, emit) async {
      roommates.add(await _repository.getApartmentWithUsers(event.apartments));
      expenses.add(await _repository.getCurrentMonthExpences(event.apartments));
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
      emit(state.copyWith(deleteOption: none(), loading: true));
      final deletion = await _repository.delete(event.apartment);
      emit(state.copyWith(deleteOption: optionOf(deletion), loading: false));
      emit(state.copyWith(deleteOption: none()));
    });
  }
}
