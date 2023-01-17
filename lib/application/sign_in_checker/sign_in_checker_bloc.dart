import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../domain/auth/i_auth_facade.dart';

part 'sign_in_checker_event.dart';
part 'sign_in_checker_state.dart';
part 'sign_in_checker_bloc.freezed.dart';

@injectable
class SignInCheckerBloc extends Bloc<SignInCheckerEvent, SignInCheckerState> {
  final IAuthFacade _authFacade;

  SignInCheckerBloc(this._authFacade) : super(const SignInCheckerState.initial()) {
    on<_AuthCheckRequest>((event, emit) async {
      final userOption = await _authFacade.getSignedUser();
      userOption.fold(
        () => emit(const SignInCheckerState.unauthenticated()),
        (a) {
          emit(const SignInCheckerState.authenticated());
          add(const _UpdateNotificationToken());
        },
      );
    });
    on<_SignOut>((event, emit) async {
      await _authFacade.signOut();
      emit(const SignInCheckerState.unauthenticated());
    });
    on<_UpdateNotificationToken>((event, emit) async {
      await _authFacade.updateNotificationToken();
    });
  }
}
