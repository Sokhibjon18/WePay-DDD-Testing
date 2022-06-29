import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:we_pay/application/apartment/form_apartment_bloc.dart';
import 'package:we_pay/injection.dart';
import 'package:we_pay/presentation/router/router.gr.dart';
import 'package:we_pay/application/auth/auth_bloc.dart';
import 'package:we_pay/application/sign_in_checker/sign_in_checker_bloc.dart';

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt<AuthBloc>()),
        BlocProvider(
          create: (_) =>
              getIt<SignInCheckerBloc>()..add(const SignInCheckerEvent.authCheckRequest()),
        ),
        BlocProvider(create: (_) => getIt<FormApartmentBloc>()),
      ],
      child: MaterialApp.router(
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
