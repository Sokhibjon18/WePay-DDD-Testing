import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:we_pay/domain/models/user_model/user_model.dart';
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
      emit(state.copyWith(isLoading: true, firstTime: false));
      final failureOrUser = await _repository.searchUser(event.userId, '');
      emit(state.copyWith(userOrFailure: failureOrUser, isLoading: false));
    });
  }
}
