import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../application/auth/auth_bloc.dart';
import '../../../constants/colors.dart';
import '../../../router/router.gr.dart';
import '../../../core/snackbar.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({Key? key}) : super(key: key);

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
                  'Isim',
                  style: TextStyle(
                    color: labelColor,
                    fontSize: 14,
                    letterSpacing: 0.2,
                  ),
                ),
                const SizedBox(height: 8),
                TextFormField(
                  autocorrect: false,
                  cursorColor: Colors.blue,
                  onChanged: (value) => context.read<AuthBloc>().add(NameChanged(value)),
                  validator: (_) => context.read<AuthBloc>().state.name.value.fold(
                        (f) => f.maybeMap(
                          shortageName: (value) => 'Shortage name',
                          orElse: () => null,
                        ),
                        (r) => null,
                      ),
                  decoration: const InputDecoration(
                    hintText: 'Ismingizni kiriting',
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
                  cursorColor: Colors.blue,
                  onChanged: (value) => context.read<AuthBloc>().add(EmailChanged(value)),
                  validator: (_) => context.read<AuthBloc>().state.emailAddress.value.fold(
                        (f) => f.maybeMap(
                          invalidEmail: (value) => 'Invalid email address',
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
                  cursorColor: Colors.blue,
                  onChanged: (value) => context.read<AuthBloc>().add(PasswordChanged(value)),
                  validator: (_) => context.read<AuthBloc>().state.password.value.fold(
                        (f) => f.maybeMap(
                          shortPassword: (value) => 'Use at least ${value.minLength} characters',
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
