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
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;

import '../../domain/models/apartment/apartment.dart' as _i11;
import '../../domain/models/product/product.dart' as _i12;
import '../screens/auth/login_page.dart' as _i2;
import '../screens/auth/sign_up_page.dart' as _i3;
import '../screens/debtors/debtors_page.dart' as _i8;
import '../screens/expense/expense_page.dart' as _i6;
import '../screens/home/home_page.dart' as _i4;
import '../screens/profile/profile.dart' as _i7;
import '../screens/search/search_page.dart' as _i5;
import '../screens/splash/splash_page.dart' as _i1;

class AppRouter extends _i9.RootStackRouter {
  AppRouter([_i10.GlobalKey<_i10.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    LogInRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.LogInPage());
    },
    SignUpRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.SignUpPage());
    },
    HomeRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.HomePage());
    },
    SearchRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.SearchPage());
    },
    ExpenseRoute.name: (routeData) {
      final args = routeData.argsAs<ExpenseRouteArgs>();
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i6.ExpensePage(key: args.key, apartment: args.apartment));
    },
    ProfileRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.ProfilePage());
    },
    DebtorsRoute.name: (routeData) {
      final args = routeData.argsAs<DebtorsRouteArgs>();
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i8.DebtorsPage(products: args.products, key: args.key));
    }
  };

  @override
  List<_i9.RouteConfig> get routes => [
        _i9.RouteConfig(SplashRoute.name, path: '/'),
        _i9.RouteConfig(LogInRoute.name, path: '/log-in-page'),
        _i9.RouteConfig(SignUpRoute.name, path: '/sign-up-page'),
        _i9.RouteConfig(HomeRoute.name, path: '/home-page'),
        _i9.RouteConfig(SearchRoute.name, path: '/search-page'),
        _i9.RouteConfig(ExpenseRoute.name, path: '/expense-page'),
        _i9.RouteConfig(ProfileRoute.name, path: '/profile-page'),
        _i9.RouteConfig(DebtorsRoute.name, path: '/debtors-page')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i9.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.LogInPage]
class LogInRoute extends _i9.PageRouteInfo<void> {
  const LogInRoute() : super(LogInRoute.name, path: '/log-in-page');

  static const String name = 'LogInRoute';
}

/// generated route for
/// [_i3.SignUpPage]
class SignUpRoute extends _i9.PageRouteInfo<void> {
  const SignUpRoute() : super(SignUpRoute.name, path: '/sign-up-page');

  static const String name = 'SignUpRoute';
}

/// generated route for
/// [_i4.HomePage]
class HomeRoute extends _i9.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/home-page');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i5.SearchPage]
class SearchRoute extends _i9.PageRouteInfo<void> {
  const SearchRoute() : super(SearchRoute.name, path: '/search-page');

  static const String name = 'SearchRoute';
}

/// generated route for
/// [_i6.ExpensePage]
class ExpenseRoute extends _i9.PageRouteInfo<ExpenseRouteArgs> {
  ExpenseRoute({_i10.Key? key, required _i11.Apartment apartment})
      : super(ExpenseRoute.name,
            path: '/expense-page',
            args: ExpenseRouteArgs(key: key, apartment: apartment));

  static const String name = 'ExpenseRoute';
}

class ExpenseRouteArgs {
  const ExpenseRouteArgs({this.key, required this.apartment});

  final _i10.Key? key;

  final _i11.Apartment apartment;

  @override
  String toString() {
    return 'ExpenseRouteArgs{key: $key, apartment: $apartment}';
  }
}

/// generated route for
/// [_i7.ProfilePage]
class ProfileRoute extends _i9.PageRouteInfo<void> {
  const ProfileRoute() : super(ProfileRoute.name, path: '/profile-page');

  static const String name = 'ProfileRoute';
}

/// generated route for
/// [_i8.DebtorsPage]
class DebtorsRoute extends _i9.PageRouteInfo<DebtorsRouteArgs> {
  DebtorsRoute({required List<_i12.Product> products, _i10.Key? key})
      : super(DebtorsRoute.name,
            path: '/debtors-page',
            args: DebtorsRouteArgs(products: products, key: key));

  static const String name = 'DebtorsRoute';
}

class DebtorsRouteArgs {
  const DebtorsRouteArgs({required this.products, this.key});

  final List<_i12.Product> products;

  final _i10.Key? key;

  @override
  String toString() {
    return 'DebtorsRouteArgs{products: $products, key: $key}';
  }
}
