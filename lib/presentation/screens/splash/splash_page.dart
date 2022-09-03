import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:we_pay/application/sign_in_checker/sign_in_checker_bloc.dart';
import 'package:we_pay/presentation/router/router.gr.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInCheckerBloc, SignInCheckerState>(
      listener: (context, state) {
        state.map(
          initial: (_) {},
          authenticated: (_) => context.replaceRoute(const BottomNavigationRoute()),
          unauthenticated: (_) => context.router.replace(const LogInRoute()),
        );
      },
      builder: (context, state) {
        return const Center(
          child: CircularProgressIndicator(strokeWidth: 0.7),
        );
      },
    );
  }
}
