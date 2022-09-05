import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:we_pay/application/auth/auth_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:we_pay/presentation/constants/colors.dart';
import 'package:we_pay/presentation/router/router.gr.dart';
import 'package:we_pay/presentation/core/snackbar.dart';

class LoginFrom extends StatelessWidget {
  const LoginFrom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () => null,
          (a) => a.fold(
            (failure) {
              String failureMessage = failure.map(
                canceledByUser: (_) => 'Bekor qilindi',
                serverError: (_) => 'Server xatoligi',
                emailAlreadyInUse: (_) => 'Email ishlatilmoqda',
                invalidEmailAndPasswordCombination: (_) => 'Noto`g`ri email yoki parol',
              );
              showSnackbar(context, SnackbarStatus.error, failureMessage);
            },
            (r) {
              context.replaceRoute(const BottomNavigationRoute());
            },
          ),
        );
      },
      builder: (context, state) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Form(
            autovalidateMode: context.read<AuthBloc>().state.showErrorMessage
                ? AutovalidateMode.always
                : AutovalidateMode.disabled,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Email',
                  style: TextStyle(
                    color: labelColor,
                    fontSize: 14,
                    letterSpacing: 0.2,
                  ),
                ),
                const SizedBox(height: 8),
                TextFormField(
                  autocorrect: false,
                  cursorColor: blue,
                  onChanged: (value) => context.read<AuthBloc>().add(EmailChanged(value)),
                  validator: (_) => context.read<AuthBloc>().state.emailAddress.value.fold(
                        (f) => f.maybeMap(
                          invalidEmail: (value) => 'Noto`g`ri email',
                          orElse: () => null,
                        ),
                        (r) => null,
                      ),
                  decoration: const InputDecoration(
                    hintText: 'Emailingizni kiriting',
                    hintStyle: TextStyle(color: hintColor, letterSpacing: 0.1),
                    filled: true,
                    fillColor: grey,
                    enabledBorder:
                        OutlineInputBorder(borderSide: BorderSide(width: 1, color: blue)),
                    border: OutlineInputBorder(borderSide: BorderSide(width: 1, color: blue)),
                    contentPadding: EdgeInsets.symmetric(horizontal: 12),
                  ),
                ),
                const SizedBox(height: 24),
                const Text(
                  'Parol',
                  style: TextStyle(
                    color: labelColor,
                    fontSize: 14,
                    letterSpacing: 0.2,
                  ),
                ),
                const SizedBox(height: 8),
                TextFormField(
                  obscureText: true,
                  autocorrect: false,
                  cursorColor: blue,
                  onChanged: (value) => context.read<AuthBloc>().add(PasswordChanged(value)),
                  validator: (_) => context.read<AuthBloc>().state.password.value.fold(
                        (f) => f.maybeMap(
                          shortPassword: (value) =>
                              'Eng kamida ${value.minLength} ta belgi kiritish',
                          orElse: () => null,
                        ),
                        (r) => null,
                      ),
                  decoration: const InputDecoration(
                    hintText: 'Parolingizni kiriting',
                    hintStyle: TextStyle(color: hintColor, letterSpacing: 0.1),
                    filled: true,
                    fillColor: grey,
                    enabledBorder:
                        OutlineInputBorder(borderSide: BorderSide(width: 1, color: blue)),
                    border: OutlineInputBorder(borderSide: BorderSide(width: 1, color: blue)),
                    contentPadding: EdgeInsets.symmetric(horizontal: 12),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
