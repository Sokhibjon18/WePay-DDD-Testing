// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;

import '../screens/auth/login_page.dart' as _i2;
import '../screens/auth/sign_up_page.dart' as _i3;
import '../screens/expense/expense_page.dart' as _i6;
import '../screens/home/home_page.dart' as _i4;
import '../screens/profile/profile.dart' as _i7;
import '../screens/search/search_page.dart' as _i5;
import '../screens/splash/splash_page.dart' as _i1;

class AppRouter extends _i8.RootStackRouter {
  AppRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    LogInRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.LogInPage());
    },
    SignUpRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.SignUpPage());
    },
    HomeRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.HomePage());
    },
    SearchRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.SearchPage());
    },
    ExpenseRoute.name: (routeData) {
      final args = routeData.argsAs<ExpenseRouteArgs>();
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i6.ExpensePage(
              key: args.key, apartmentName: args.apartmentName));
    },
    ProfileRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.ProfilePage());
    }
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(SplashRoute.name, path: '/'),
        _i8.RouteConfig(LogInRoute.name, path: '/log-in-page'),
        _i8.RouteConfig(SignUpRoute.name, path: '/sign-up-page'),
        _i8.RouteConfig(HomeRoute.name, path: '/home-page'),
        _i8.RouteConfig(SearchRoute.name, path: '/search-page'),
        _i8.RouteConfig(ExpenseRoute.name, path: '/expense-page'),
        _i8.RouteConfig(ProfileRoute.name, path: '/profile-page')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i8.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.LogInPage]
class LogInRoute extends _i8.PageRouteInfo<void> {
  const LogInRoute() : super(LogInRoute.name, path: '/log-in-page');

  static const String name = 'LogInRoute';
}

/// generated route for
/// [_i3.SignUpPage]
class SignUpRoute extends _i8.PageRouteInfo<void> {
  const SignUpRoute() : super(SignUpRoute.name, path: '/sign-up-page');

  static const String name = 'SignUpRoute';
}

/// generated route for
/// [_i4.HomePage]
class HomeRoute extends _i8.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/home-page');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i5.SearchPage]
class SearchRoute extends _i8.PageRouteInfo<void> {
  const SearchRoute() : super(SearchRoute.name, path: '/search-page');

  static const String name = 'SearchRoute';
}

/// generated route for
/// [_i6.ExpensePage]
class ExpenseRoute extends _i8.PageRouteInfo<ExpenseRouteArgs> {
  ExpenseRoute({_i9.Key? key, required String apartmentName})
      : super(ExpenseRoute.name,
            path: '/expense-page',
            args: ExpenseRouteArgs(key: key, apartmentName: apartmentName));

  static const String name = 'ExpenseRoute';
}

class ExpenseRouteArgs {
  const ExpenseRouteArgs({this.key, required this.apartmentName});

  final _i9.Key? key;

  final String apartmentName;

  @override
  String toString() {
    return 'ExpenseRouteArgs{key: $key, apartmentName: $apartmentName}';
  }
}

/// generated route for
/// [_i7.ProfilePage]
class ProfileRoute extends _i8.PageRouteInfo<void> {
  const ProfileRoute() : super(ProfileRoute.name, path: '/profile-page');

  static const String name = 'ProfileRoute';
}
