import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:we_pay/application/apartment/form_apartment_bloc.dart';
import 'package:we_pay/application/search/search_user/search_bloc.dart';
import 'package:we_pay/injection.dart';
import 'package:we_pay/presentation/router/router.gr.dart';
import 'package:we_pay/application/auth/auth_bloc.dart';
import 'package:we_pay/application/sign_in_checker/sign_in_checker_bloc.dart';
import 'package:we_pay/application/request/request_bloc.dart';
import 'package:we_pay/application/product/product_actor/product_actor_bloc.dart';
import 'package:we_pay/application/product/product_form/product_form_bloc.dart';
import 'package:we_pay/application/profile/profile_bloc.dart';
import 'package:we_pay/application/connection/connection_bloc.dart' as con;

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
        BlocProvider(create: (_) => getIt<ProductActorBloc>()),
        BlocProvider(create: (_) => getIt<RequestBloc>()),
        BlocProvider(create: (_) => getIt<SearchBloc>()),
        BlocProvider(create: (_) => getIt<ProductFormBloc>()),
        BlocProvider(create: (_) => getIt<ProfileBloc>()),
        BlocProvider(
            create: (_) => getIt<con.ConnectionBloc>()..add(const con.ConnectionEvent.listen())),
      ],
      child: MaterialApp.router(
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'Roboto-Regular'),
      ),
    );
  }
}
