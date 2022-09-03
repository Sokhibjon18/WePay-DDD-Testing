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

  StreamController<Either<ApartmentFailure, List<PublicExpense>>> apartmentStream =
      StreamController.broadcast();
  StreamController<Either<SearchFailure, List<RequestToJoin>>> requestStream =
      StreamController.broadcast();
  StreamController<List<Roommates>> roommates = StreamController.broadcast();
  StreamController<List<CurrentDateExpense>> expenses = StreamController.broadcast();

  FormApartmentBloc(this._repository) : super(FormApartmentState.initial()) {
    on<_Initial>((event, emit) async {
      emit(FormApartmentState.initial());
    });
    on<_InitializeStreams>((event, emit) {
      _repository.watchAll().listen((event) {
        apartmentStream.sink.add(event);
      });
      _repository.watchRequests().listen((event) {
        requestStream.sink.add(event);
      });
    });
    on<_NameChanged>((event, emit) {
      emit(state.copyWith(name: Address(event.region), creationFailure: none()));
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

      final validateName = state.name.isValid();

      if (validateName) {
        emit(state.copyWith(
          loading: true,
          creationFailure: none(),
        ));

        failureOrSuccess = await _repository.update(
          PublicExpense(
            uid: event.uid,
            name: state.name.getRight(),
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

      final validateName = state.name.isValid();

      if (validateName) {
        emit(state.copyWith(
          loading: true,
          creationFailure: none(),
        ));

        failureOrSuccess = await _repository.create(
          PublicExpense(name: state.name.getRight()),
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
