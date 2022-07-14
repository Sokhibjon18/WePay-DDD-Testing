import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:we_pay/application/auth/auth_bloc.dart';
import 'package:we_pay/presentation/screens/auth/forms/login_form.dart';
import 'package:we_pay/presentation/screens/auth/widget/simple_btn.dart';
import 'package:we_pay/presentation/screens/auth/widget/reusables.dart';
import 'package:we_pay/presentation/router/router.gr.dart';

class LogInPage extends StatelessWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(32.0),
            height: MediaQuery.of(context).size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.max,
              children: [
                const Text(
                  'Hello! Welcome back!',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Hello again, You\'ve been missed',
                  style: TextStyle(fontSize: 13, color: Colors.grey),
                ),
                const SizedBox(height: 32),
                const LoginFrom(),
                const SizedBox(height: 32),
                BlocBuilder<AuthBloc, AuthState>(
                  buildWhen: (previous, current) => previous.isSubmitting != current.isSubmitting,
                  builder: (context, state) {
                    return SimpleBtn(
                      child: context.read<AuthBloc>().state.isSubmitting
                          ? const CircularProgressIndicator(color: Colors.white)
                          : const Text(
                              'Log In',
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
                              .add(const AuthEvent.signInWithEmailAndPassword());
                        }
                      },
                    );
                  },
                ),
                const SizedBox(height: 48),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 105,
                      height: 1,
                      color: Colors.grey,
                    ),
                    const Text('Or login with'),
                    Container(
                      width: 105,
                      height: 1,
                      color: Colors.grey,
                    ),
                  ],
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
                    const Text('Do\'nt have an account?', style: TextStyle(color: Colors.grey)),
                    const SizedBox(width: 4),
                    textBtn('Sign Up', () {
                      context.read<AuthBloc>().add(const Refresh());
                      context.router.replace(const SignUpRoute());
                    }),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
