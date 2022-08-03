import 'package:flutter/material.dart';
import 'package:we_pay/application/apartment/form_apartment_bloc.dart';
import 'package:we_pay/presentation/constants/colors.dart';
import 'package:we_pay/presentation/router/router.gr.dart';
import 'package:we_pay/application/sign_in_checker/sign_in_checker_bloc.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LogOutBtn extends StatelessWidget {
  const LogOutBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.read<SignInCheckerBloc>().add(const SignInCheckerEvent.signOut());
        context.router.replaceAll([const LogInRoute()]);
      },
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: const Text(
          'Log out',
          style: TextStyle(fontSize: 16, color: grey),
        ),
      ),
    );
  }
}
