import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:we_pay/application/auth/auth_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:we_pay/presentation/router/router.gr.dart';

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
                canceledByUser: (_) => 'Canceled by user',
                serverError: (_) => 'Server error',
                emailAlreadyInUse: (_) => 'Email already in use',
                invalidEmailAndPasswordCombination: (_) => 'Incorrect user or password',
              );
              FlushbarHelper.createError(message: failureMessage).show(context);
            },
            (r) {
              context.router.replace(const HomeRoute());
            },
          ),
        );
      },
      builder: (context, state) {
        return Form(
          autovalidateMode: context.read<AuthBloc>().state.showErrorMessage
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
          child: Column(
            children: [
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
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.alternate_email_outlined, color: Colors.grey),
                  label: const Text('Email'),
                  labelStyle: const TextStyle(color: Colors.grey),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.grey[100]!),
                  ),
                ),
              ),
              const SizedBox(height: 16),
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
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.lock_outline_rounded, color: Colors.grey),
                  label: const Text('Password'),
                  labelStyle: const TextStyle(color: Colors.grey),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.grey[100]!),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
