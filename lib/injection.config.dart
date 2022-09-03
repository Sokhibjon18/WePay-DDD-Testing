// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:firebase_messaging/firebase_messaging.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i7;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i23;

import 'application/apartment/form_apartment_bloc.dart' as _i24;
import 'application/auth/auth_bloc.dart' as _i28;
import 'application/connection/connection_bloc.dart' as _i3;
import 'application/product/product_actor/product_actor_bloc.dart' as _i18;
import 'application/product/product_form/product_form_bloc.dart' as _i19;
import 'application/profile/profile_bloc.dart' as _i20;
import 'application/request/request_bloc.dart' as _i21;
import 'application/search/search_user/search_bloc.dart' as _i22;
import 'application/sign_in_checker/sign_in_checker_bloc.dart' as _i27;
import 'domain/apartment/i_apartment_repository.dart' as _i8;
import 'domain/auth/i_auth_facade.dart' as _i25;
import 'domain/product/i_product_repository.dart' as _i10;
import 'domain/profile/i_profile_repository.dart' as _i12;
import 'domain/request/i_request_repository.dart' as _i14;
import 'domain/search/i_search_repository.dart' as _i16;
import 'infrastructure/core/injectable_modules.dart' as _i29;
import 'infrastructure/repositories/apartment_repo.dart' as _i9;
import 'infrastructure/repositories/firebase_auth_facade.dart' as _i26;
import 'infrastructure/repositories/product_repo.dart' as _i11;
import 'infrastructure/repositories/profile_repo.dart' as _i13;
import 'infrastructure/repositories/request_repo.dart' as _i15;
import 'infrastructure/repositories/search_repo.dart'
    as _i17; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final injectableModules = _$InjectableModules();
  gh.factory<_i3.ConnectionBloc>(() => _i3.ConnectionBloc());
  gh.lazySingleton<_i4.FirebaseAuth>(() => injectableModules.firebaseAuth);
  gh.lazySingleton<_i5.FirebaseFirestore>(() => injectableModules.firestore);
  gh.lazySingleton<_i6.FirebaseMessaging>(() => injectableModules.messaging);
  gh.lazySingleton<_i7.GoogleSignIn>(() => injectableModules.googleSignIn);
  gh.lazySingleton<_i8.IApartmentRepository>(() => _i9.ApartmentRepository(
      get<_i5.FirebaseFirestore>(), get<_i4.FirebaseAuth>()));
  gh.lazySingleton<_i10.IProductRepository>(() => _i11.ProductRepository(
      get<_i5.FirebaseFirestore>(), get<_i4.FirebaseAuth>()));
  gh.lazySingleton<_i12.IProfileRepository>(() => _i13.ProfileRepository(
      get<_i5.FirebaseFirestore>(), get<_i4.FirebaseAuth>()));
  gh.lazySingleton<_i14.IRequestRepository>(() => _i15.RequestRepository(
      get<_i5.FirebaseFirestore>(), get<_i4.FirebaseAuth>()));
  gh.lazySingleton<_i16.ISearchRepository>(
      () => _i17.SearchRepository(get<_i5.FirebaseFirestore>()));
  gh.factory<_i18.ProductActorBloc>(
      () => _i18.ProductActorBloc(get<_i10.IProductRepository>()));
  gh.factory<_i19.ProductFormBloc>(
      () => _i19.ProductFormBloc(get<_i10.IProductRepository>()));
  gh.factory<_i20.ProfileBloc>(
      () => _i20.ProfileBloc(get<_i12.IProfileRepository>()));
  gh.factory<_i21.RequestBloc>(
      () => _i21.RequestBloc(get<_i14.IRequestRepository>()));
  gh.factory<_i22.SearchBloc>(
      () => _i22.SearchBloc(get<_i16.ISearchRepository>()));
  await gh.factoryAsync<_i23.SharedPreferences>(
      () => injectableModules.sharedPreferences,
      preResolve: true);
  gh.factory<_i24.FormApartmentBloc>(
      () => _i24.FormApartmentBloc(get<_i8.IApartmentRepository>()));
  gh.lazySingleton<_i25.IAuthFacade>(() => _i26.FirebaseAuthFacade(
      get<_i4.FirebaseAuth>(),
      get<_i7.GoogleSignIn>(),
      get<_i5.FirebaseFirestore>(),
      get<_i23.SharedPreferences>(),
      get<_i6.FirebaseMessaging>()));
  gh.factory<_i27.SignInCheckerBloc>(
      () => _i27.SignInCheckerBloc(get<_i25.IAuthFacade>()));
  gh.factory<_i28.AuthBloc>(() => _i28.AuthBloc(get<_i25.IAuthFacade>()));
  return get;
}

class _$InjectableModules extends _i29.InjectableModules {}
