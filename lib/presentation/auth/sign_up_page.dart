import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:we_pay/application/auth/auth_bloc.dart';
import 'package:we_pay/presentation/auth/forms/sign_up_form.dart';
import 'package:we_pay/presentation/auth/widget/simple_btn.dart';
import 'package:we_pay/presentation/auth/widget/reusables.dart';
import 'package:we_pay/presentation/router/router.gr.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(32.0),
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text(
                'Create Account',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              const Text(
                'Connect with your Friends Today!',
                style: TextStyle(fontSize: 13, color: Colors.grey),
              ),
              const SizedBox(height: 32),
              const SignUpForm(),
              const SizedBox(height: 32),
              BlocBuilder<AuthBloc, AuthState>(
                buildWhen: (previous, current) => previous.isSubmitting != current.isSubmitting,
                builder: (context, state) {
                  return SimpleBtn(
                    child: context.read<AuthBloc>().state.isSubmitting
                        ? const CircularProgressIndicator(
                            color: Colors.white,
                          )
                        : const Text(
                            'Sign Up',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                    onTap: () {
                      if (!context.read<AuthBloc>().state.isSubmitting) {
                        context
                            .read<AuthBloc>()
                            .add(const AuthEvent.registerWithEmailAndPassword());
                      }
                    },
                  );
                },
              ),
              Container(
                margin: const EdgeInsets.only(top: 48),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        height: 1,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(width: 16),
                    const Text('Or login with'),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Container(
                        height: 1,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 32),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: loginWithAnother(context, 'assets/images/google.png', 'Google'),
              ),
              const SizedBox(height: 48),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Already have an account?'),
                  const SizedBox(width: 8),
                  textBtn('Sign Up', () {
                    context.read<AuthBloc>().add(const Refresh());
                    context.router.replace(const LogInRoute());
                  }),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
