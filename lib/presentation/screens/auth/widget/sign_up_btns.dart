import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:we_pay/application/auth/auth_bloc.dart';
import 'package:we_pay/presentation/constants/colors.dart';
import 'package:we_pay/presentation/router/router.gr.dart';
import 'package:we_pay/presentation/screens/widgets/my_btn.dart';

class SignUpBtns extends StatelessWidget {
  const SignUpBtns({Key? key}) : super(key: key);

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
                        'Ochish',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          letterSpacing: 0.2,
                        ),
                      ),
                onTap: () {
                  if (!context.read<AuthBloc>().state.isSubmitting) {
                    context.read<AuthBloc>().add(const AuthEvent.registerWithEmailAndPassword());
                  }
                },
              );
            },
          ),
          const SizedBox(height: 12),
          MyBtn(
            color: white,
            elevation: 0,
            child: const Text(
              'Hisobga kirish',
              style: TextStyle(
                color: blue,
                fontSize: 16,
                fontWeight: FontWeight.w500,
                letterSpacing: 0.1,
              ),
            ),
            onTap: () => context.router.replace(const LogInRoute()),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}