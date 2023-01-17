import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../application/auth/auth_bloc.dart';
import '../../../constants/colors.dart';
import '../../../router/router.gr.dart';
import '../../widgets/my_btn.dart';

class LoginBtns extends StatelessWidget {
  const LoginBtns({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        children: [
          BlocBuilder<AuthBloc, AuthState>(
            buildWhen: (previous, current) => previous.isSubmitting != current.isSubmitting,
            builder: (context, state) {
              return MyBtn(
                child: context.read<AuthBloc>().state.isSubmitting
                    ? const CircularProgressIndicator(color: Colors.white, strokeWidth: 2)
                    : const Text(
                        'Kirish',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          letterSpacing: 0.2,
                        ),
                      ),
                onTap: () {
                  if (!context.read<AuthBloc>().state.isSubmitting) {
                    context.read<AuthBloc>().add(const AuthEvent.signInWithEmailAndPassword());
                  }
                },
              );
            },
          ),
          const SizedBox(height: 12),
          MyBtn(
            elevation: 0,
            color: grey,
            onTap: () => context.read<AuthBloc>().add(const SignInWithGoogle()),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/google.png', height: 24, width: 24),
                const SizedBox(width: 8),
                const Text(
                  'orqali kirish',
                  style: TextStyle(
                    color: blue,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.1,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          MyBtn(
            color: white,
            elevation: 0,
            child: const Text(
              'Hisob yaratish',
              style: TextStyle(
                color: blue,
                fontSize: 16,
                fontWeight: FontWeight.w500,
                letterSpacing: 0.1,
              ),
            ),
            onTap: () => context.router.replace(const SignUpRoute()),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
