import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:we_pay/domain/models/apartment/apartment.dart';
import 'package:we_pay/domain/models/request/request.dart';
import 'package:we_pay/domain/request/i_request_repository.dart';
import 'package:we_pay/domain/request/request_failure.dart';

part 'request_event.dart';
part 'request_state.dart';
part 'request_bloc.freezed.dart';

@injectable
class RequestBloc extends Bloc<RequestEvent, RequestState> {
  final IRequestRepository _repository;

  RequestBloc(this._repository) : super(RequestState.initial()) {
    on<_SendJoinRequest>((event, emit) async {
      emit(state.copyWith(isLoading: true, requstFailureOrSuccess: none()));
      final failureOrList = await _repository.sendRequestToJoin(event.apartment.uid!);
      emit(state.copyWith(isLoading: false, requstFailureOrSuccess: some(failureOrList)));
    });
    on<_AcceptRequest>((event, emit) async {
      emit(state.copyWith(isLoading: true, requstFailureOrSuccess: none()));
      final failureOrList = await _repository.acceptRequest(event.request);
      emit(state.copyWith(isLoading: false, requstFailureOrSuccess: some(failureOrList)));
    });
    on<_RejectRequest>((event, emit) async {
      emit(state.copyWith(isLoading: true, requstFailureOrSuccess: none()));
      final failureOrList = await _repository.rejectRequest(event.request.uid);
      emit(state.copyWith(isLoading: false, requstFailureOrSuccess: some(failureOrList)));
    });
  }
}
