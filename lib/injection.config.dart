// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;

import 'application/apartment/form_apartment_bloc.dart' as _i15;
import 'application/auth/auth_bloc.dart' as _i14;
import 'application/product/product_actor/product_actor_bloc.dart' as _i12;
import 'application/sign_in_checker/sign_in_checker_bloc.dart' as _i13;
import 'domain/apartment/i_apartment_repository.dart' as _i6;
import 'domain/auth/i_auth_facade.dart' as _i8;
import 'domain/product/i_product_repository.dart' as _i10;
import 'infrastructure/apartment/apartment_repository.dart' as _i7;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i9;
import 'infrastructure/core/firebase_injectable_modules.dart' as _i16;
import 'infrastructure/product_dto/product_repository.dart'
    as _i11; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModules = _$FirebaseInjectableModules();
  gh.lazySingleton<_i3.FirebaseAuth>(
      () => firebaseInjectableModules.firebaseAuth);
  gh.lazySingleton<_i4.FirebaseFirestore>(
      () => firebaseInjectableModules.firestore);
  gh.lazySingleton<_i5.GoogleSignIn>(
      () => firebaseInjectableModules.googleSignIn);
  gh.lazySingleton<_i6.IApartmentRepository>(() => _i7.ApartmentRepository(
      get<_i4.FirebaseFirestore>(), get<_i3.FirebaseAuth>()));
  gh.lazySingleton<_i8.IAuthFacade>(() => _i9.FirebaseAuthFacade(
      get<_i3.FirebaseAuth>(),
      get<_i5.GoogleSignIn>(),
      get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i10.IProductRepository>(
      () => _i11.ProductRepository(get<_i4.FirebaseFirestore>()));
  gh.factory<_i12.ProductActorBloc>(
      () => _i12.ProductActorBloc(get<_i10.IProductRepository>()));
  gh.factory<_i13.SignInCheckerBloc>(
      () => _i13.SignInCheckerBloc(get<_i8.IAuthFacade>()));
  gh.factory<_i14.AuthBloc>(() => _i14.AuthBloc(get<_i8.IAuthFacade>()));
  gh.factory<_i15.FormApartmentBloc>(
      () => _i15.FormApartmentBloc(get<_i6.IApartmentRepository>()));
  return get;
}

class _$FirebaseInjectableModules extends _i16.FirebaseInjectableModules {}
