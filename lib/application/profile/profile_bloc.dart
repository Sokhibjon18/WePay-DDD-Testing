import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../domain/auth/value_objects.dart';
import '../../domain/models/profile.dart';
import '../../domain/profile/i_profile_repository.dart';
import '../../domain/profile/profile_failure.dart';
import '../../presentation/constants/colors.dart';

import '../../domain/models/user_model/user_model.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final IProfileRepository _repository;

  ProfileBloc(this._repository) : super(ProfileState.initial()) {
    on<_Started>((event, emit) async {
      Either<ProfileFailure, UserModel>? userOrFailure;
      emit(state.copyWith(isLoading: true));
      userOrFailure = await _repository.getUser();
      setEmailNameColor(userOrFailure);
      emit(state.copyWith(isLoading: false, user: optionOf(userOrFailure)));
    });
    on<_EmailChanged>((event, emit) {
      emit(state.copyWith(email: EmailAddress(event.email), failureOrSuccessOption: none()));
    });
    on<_NameChanged>((event, emit) {
      emit(state.copyWith(name: Name(event.name), failureOrSuccessOption: none()));
    });
    on<_ColorChanged>((event, emit) {
      emit(state.copyWith(color: event.color, failureOrSuccessOption: none()));
    });
    on<_SaveChanged>((event, emit) async {
      final validEmail = state.email.isValid();
      final validName = state.name.isValid();

      if (validEmail && validName) {
        emit(state.copyWith(isLoading: true));
        final profile = Profile(state.email.getRight(), state.name.getRight(), state.color);
        final userChanged = await _repository.updateUser(profile);
        emit(state.copyWith(isLoading: false, failureOrSuccessOption: optionOf(userChanged)));
        add(const ProfileEvent.started());
      } else {
        emit(state.copyWith(
          isLoading: false,
          failureOrSuccessOption: none(),
          showErrorMessage: true,
        ));
      }
    });
  }

  void setEmailNameColor(Either<ProfileFailure, UserModel> userOrFailure) {
    userOrFailure.fold((l) => null, (user) {
      add(ProfileEvent.emailChanged(user.email!));
      add(ProfileEvent.colorChanged(user.color));
      add(ProfileEvent.nameChanged(user.name));
    });
  }
}
