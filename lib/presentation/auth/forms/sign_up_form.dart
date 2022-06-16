import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:we_pay/application/auth/auth_bloc.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
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
              const SizedBox(height: 16),
              TextFormField(
                obscureText: true,
                autocorrect: false,
                cursorColor: Colors.blue,
                onChanged: (value) => context.read<AuthBloc>().add(RepeatedPasswordChanged(value)),
                validator: (_) => context.read<AuthBloc>().state.repeatedPassword.value.fold(
                      (f) => f.maybeMap(
                        paswordsAreNotSame: (_) => 'Passwords are not same',
                        shortPassword: (value) => 'Use at least ${value.minLength} characters',
                        orElse: () => null,
                      ),
                      (r) => null,
                    ),
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.lock_outline_rounded, color: Colors.grey),
                  label: const Text('Repeat the password'),
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
