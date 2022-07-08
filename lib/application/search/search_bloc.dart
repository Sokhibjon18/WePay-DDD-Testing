import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:we_pay/domain/models/apartment/apartment.dart';
import 'package:we_pay/domain/search/i_search_repository.dart';
import 'package:we_pay/domain/search/search_failure.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final ISearchRepository _repository;

  SearchBloc(this._repository) : super(SearchState.initial()) {
    on<_Search>((event, emit) async {
      if (event.text.isEmpty) {
        add(const _ShowAllApartment());
      } else {
        emit(state.copyWith(isLoading: true, listOrFailure: none()));
        final failureOrList = await _repository.searchApartment(event.text);
        emit(state.copyWith(listOrFailure: some(failureOrList), isLoading: false));
      }
    });
    on<_ShowAllApartment>((event, emit) async {
      emit(state.copyWith(isLoading: true, listOrFailure: none()));
      final failureOrList = await _repository.showAll();
      emit(state.copyWith(listOrFailure: some(failureOrList), isLoading: false));
    });
  }
}
