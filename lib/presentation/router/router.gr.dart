// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i10;

import '../../domain/models/apartment/apartment.dart' as _i11;
import '../screens/auth/login_page.dart' as _i2;
import '../screens/auth/sign_up_page.dart' as _i3;
import '../screens/expense/expense_page.dart' as _i8;
import '../screens/home/home_page.dart' as _i7;
import '../screens/profile/profile.dart' as _i9;
import '../screens/splash/splash_page.dart' as _i1;
import '../screens/statistics/statistics_page.dart' as _i6;
import 'bottom_navigation.dart' as _i4;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i10.GlobalKey<_i10.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    LogInRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.LogInPage());
    },
    SignUpRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.SignUpPage());
    },
    BottomNavigationRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.BottomNavigationPage());
    },
    StatisticsRouter.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.EmptyRouterPage());
    },
    HomeRouter.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.EmptyRouterPage());
    },
    ProfileRouter.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.EmptyRouterPage());
    },
    StatisticsRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.StatisticsPage());
    },
    HomeRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.HomePage());
    },
    ExpenseRoute.name: (routeData) {
      final args = routeData.argsAs<ExpenseRouteArgs>();
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i8.ExpensePage(
              key: args.key, publicExpense: args.publicExpense));
    },
    ProfileRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.ProfilePage());
    }
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(SplashRoute.name, path: '/'),
        _i5.RouteConfig(LogInRoute.name, path: '/log-in-page'),
        _i5.RouteConfig(SignUpRoute.name, path: '/sign-up-page'),
        _i5.RouteConfig(BottomNavigationRoute.name,
            path: '/bottom-navigation-page',
            children: [
              _i5.RouteConfig(StatisticsRouter.name,
                  path: 'statistics',
                  parent: BottomNavigationRoute.name,
                  children: [
                    _i5.RouteConfig(StatisticsRoute.name,
                        path: '', parent: StatisticsRouter.name)
                  ]),
              _i5.RouteConfig(HomeRouter.name,
                  path: 'home',
                  parent: BottomNavigationRoute.name,
                  children: [
                    _i5.RouteConfig(HomeRoute.name,
                        path: '', parent: HomeRouter.name),
                    _i5.RouteConfig(ExpenseRoute.name,
                        path: 'expense-page', parent: HomeRouter.name)
                  ]),
              _i5.RouteConfig(ProfileRouter.name,
                  path: 'profile',
                  parent: BottomNavigationRoute.name,
                  children: [
                    _i5.RouteConfig(ProfileRoute.name,
                        path: '', parent: ProfileRouter.name)
                  ])
            ])
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i5.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.LogInPage]
class LogInRoute extends _i5.PageRouteInfo<void> {
  const LogInRoute() : super(LogInRoute.name, path: '/log-in-page');

  static const String name = 'LogInRoute';
}

/// generated route for
/// [_i3.SignUpPage]
class SignUpRoute extends _i5.PageRouteInfo<void> {
  const SignUpRoute() : super(SignUpRoute.name, path: '/sign-up-page');

  static const String name = 'SignUpRoute';
}

/// generated route for
/// [_i4.BottomNavigationPage]
class BottomNavigationRoute extends _i5.PageRouteInfo<void> {
  const BottomNavigationRoute({List<_i5.PageRouteInfo>? children})
      : super(BottomNavigationRoute.name,
            path: '/bottom-navigation-page', initialChildren: children);

  static const String name = 'BottomNavigationRoute';
}

/// generated route for
/// [_i5.EmptyRouterPage]
class StatisticsRouter extends _i5.PageRouteInfo<void> {
  const StatisticsRouter({List<_i5.PageRouteInfo>? children})
      : super(StatisticsRouter.name,
            path: 'statistics', initialChildren: children);

  static const String name = 'StatisticsRouter';
}

/// generated route for
/// [_i5.EmptyRouterPage]
class HomeRouter extends _i5.PageRouteInfo<void> {
  const HomeRouter({List<_i5.PageRouteInfo>? children})
      : super(HomeRouter.name, path: 'home', initialChildren: children);

  static const String name = 'HomeRouter';
}

/// generated route for
/// [_i5.EmptyRouterPage]
class ProfileRouter extends _i5.PageRouteInfo<void> {
  const ProfileRouter({List<_i5.PageRouteInfo>? children})
      : super(ProfileRouter.name, path: 'profile', initialChildren: children);

  static const String name = 'ProfileRouter';
}

/// generated route for
/// [_i6.StatisticsPage]
class StatisticsRoute extends _i5.PageRouteInfo<void> {
  const StatisticsRoute() : super(StatisticsRoute.name, path: '');

  static const String name = 'StatisticsRoute';
}

/// generated route for
/// [_i7.HomePage]
class HomeRoute extends _i5.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i8.ExpensePage]
class ExpenseRoute extends _i5.PageRouteInfo<ExpenseRouteArgs> {
  ExpenseRoute({_i10.Key? key, required _i11.PublicExpense publicExpense})
      : super(ExpenseRoute.name,
            path: 'expense-page',
            args: ExpenseRouteArgs(key: key, publicExpense: publicExpense));

  static const String name = 'ExpenseRoute';
}

class ExpenseRouteArgs {
  const ExpenseRouteArgs({this.key, required this.publicExpense});

  final _i10.Key? key;

  final _i11.PublicExpense publicExpense;

  @override
  String toString() {
    return 'ExpenseRouteArgs{key: $key, publicExpense: $publicExpense}';
  }
}

/// generated route for
/// [_i9.ProfilePage]
class ProfileRoute extends _i5.PageRouteInfo<void> {
  const ProfileRoute() : super(ProfileRoute.name, path: '');

  static const String name = 'ProfileRoute';
}
