// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i6;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i22;

import 'application/apartment/form_apartment_bloc.dart' as _i23;
import 'application/auth/auth_bloc.dart' as _i27;
import 'application/connection/connection_bloc.dart' as _i3;
import 'application/product/product_actor/product_actor_bloc.dart' as _i17;
import 'application/product/product_form/product_form_bloc.dart' as _i18;
import 'application/profile/profile_bloc.dart' as _i19;
import 'application/request/request_bloc.dart' as _i20;
import 'application/search/search_bloc.dart' as _i21;
import 'application/sign_in_checker/sign_in_checker_bloc.dart' as _i26;
import 'domain/apartment/i_apartment_repository.dart' as _i7;
import 'domain/auth/i_auth_facade.dart' as _i24;
import 'domain/product/i_product_repository.dart' as _i9;
import 'domain/profile/i_profile_repository.dart' as _i11;
import 'domain/request/i_request_repository.dart' as _i13;
import 'domain/search/i_search_repository.dart' as _i15;
import 'infrastructure/core/injectable_modules.dart' as _i28;
import 'infrastructure/repositories/apartment_repo.dart' as _i8;
import 'infrastructure/repositories/firebase_auth_facade.dart' as _i25;
import 'infrastructure/repositories/product_repo.dart' as _i10;
import 'infrastructure/repositories/profile_repo.dart' as _i12;
import 'infrastructure/repositories/request_repo.dart' as _i14;
import 'infrastructure/repositories/search_repo.dart'
    as _i16; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final injectableModules = _$InjectableModules();
  gh.factory<_i3.ConnectionBloc>(() => _i3.ConnectionBloc());
  gh.lazySingleton<_i4.FirebaseAuth>(() => injectableModules.firebaseAuth);
  gh.lazySingleton<_i5.FirebaseFirestore>(() => injectableModules.firestore);
  gh.lazySingleton<_i6.GoogleSignIn>(() => injectableModules.googleSignIn);
  gh.lazySingleton<_i7.IApartmentRepository>(() => _i8.ApartmentRepository(
      get<_i5.FirebaseFirestore>(), get<_i4.FirebaseAuth>()));
  gh.lazySingleton<_i9.IProductRepository>(() => _i10.ProductRepository(
      get<_i5.FirebaseFirestore>(), get<_i4.FirebaseAuth>()));
  gh.lazySingleton<_i11.IProfileRepository>(() => _i12.ProfileRepository(
      get<_i5.FirebaseFirestore>(), get<_i4.FirebaseAuth>()));
  gh.lazySingleton<_i13.IRequestRepository>(() => _i14.RequestRepository(
      get<_i5.FirebaseFirestore>(), get<_i4.FirebaseAuth>()));
  gh.lazySingleton<_i15.ISearchRepository>(
      () => _i16.SearchRepository(get<_i5.FirebaseFirestore>()));
  gh.factory<_i17.ProductActorBloc>(
      () => _i17.ProductActorBloc(get<_i9.IProductRepository>()));
  gh.factory<_i18.ProductFormBloc>(
      () => _i18.ProductFormBloc(get<_i9.IProductRepository>()));
  gh.factory<_i19.ProfileBloc>(
      () => _i19.ProfileBloc(get<_i11.IProfileRepository>()));
  gh.factory<_i20.RequestBloc>(
      () => _i20.RequestBloc(get<_i13.IRequestRepository>()));
  gh.factory<_i21.SearchBloc>(
      () => _i21.SearchBloc(get<_i15.ISearchRepository>()));
  await gh.factoryAsync<_i22.SharedPreferences>(
      () => injectableModules.sharedPreferences,
      preResolve: true);
  gh.factory<_i23.FormApartmentBloc>(
      () => _i23.FormApartmentBloc(get<_i7.IApartmentRepository>()));
  gh.lazySingleton<_i24.IAuthFacade>(() => _i25.FirebaseAuthFacade(
      get<_i4.FirebaseAuth>(),
      get<_i6.GoogleSignIn>(),
      get<_i5.FirebaseFirestore>(),
      get<_i22.SharedPreferences>()));
  gh.factory<_i26.SignInCheckerBloc>(
      () => _i26.SignInCheckerBloc(get<_i24.IAuthFacade>()));
  gh.factory<_i27.AuthBloc>(() => _i27.AuthBloc(get<_i24.IAuthFacade>()));
  return get;
}

class _$InjectableModules extends _i28.InjectableModules {}
