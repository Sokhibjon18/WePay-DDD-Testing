// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i21;

import 'application/apartment/form_apartment_bloc.dart' as _i22;
import 'application/auth/auth_bloc.dart' as _i26;
import 'application/product/product_actor/product_actor_bloc.dart' as _i16;
import 'application/product/product_form/product_form_bloc.dart' as _i17;
import 'application/profile/profile_bloc.dart' as _i18;
import 'application/request/request_bloc.dart' as _i19;
import 'application/search/search_bloc.dart' as _i20;
import 'application/sign_in_checker/sign_in_checker_bloc.dart' as _i25;
import 'domain/apartment/i_apartment_repository.dart' as _i6;
import 'domain/auth/i_auth_facade.dart' as _i23;
import 'domain/product/i_product_repository.dart' as _i8;
import 'domain/profile/i_profile_repository.dart' as _i10;
import 'domain/request/i_request_repository.dart' as _i12;
import 'domain/search/i_search_repository.dart' as _i14;
import 'infrastructure/core/injectable_modules.dart' as _i27;
import 'infrastructure/repositories/apartment_repo.dart' as _i7;
import 'infrastructure/repositories/firebase_auth_facade.dart' as _i24;
import 'infrastructure/repositories/product_repo.dart' as _i9;
import 'infrastructure/repositories/profile_repo.dart' as _i11;
import 'infrastructure/repositories/request_repo.dart' as _i13;
import 'infrastructure/repositories/search_repo.dart'
    as _i15; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final injectableModules = _$InjectableModules();
  gh.lazySingleton<_i3.FirebaseAuth>(() => injectableModules.firebaseAuth);
  gh.lazySingleton<_i4.FirebaseFirestore>(() => injectableModules.firestore);
  gh.lazySingleton<_i5.GoogleSignIn>(() => injectableModules.googleSignIn);
  gh.lazySingleton<_i6.IApartmentRepository>(() => _i7.ApartmentRepository(
      get<_i4.FirebaseFirestore>(), get<_i3.FirebaseAuth>()));
  gh.lazySingleton<_i8.IProductRepository>(() => _i9.ProductRepository(
      get<_i4.FirebaseFirestore>(), get<_i3.FirebaseAuth>()));
  gh.lazySingleton<_i10.IProfileRepository>(() => _i11.ProfileRepository(
      get<_i4.FirebaseFirestore>(), get<_i3.FirebaseAuth>()));
  gh.lazySingleton<_i12.IRequestRepository>(() => _i13.RequestRepository(
      get<_i4.FirebaseFirestore>(), get<_i3.FirebaseAuth>()));
  gh.lazySingleton<_i14.ISearchRepository>(
      () => _i15.SearchRepository(get<_i4.FirebaseFirestore>()));
  gh.factory<_i16.ProductActorBloc>(
      () => _i16.ProductActorBloc(get<_i8.IProductRepository>()));
  gh.factory<_i17.ProductFormBloc>(
      () => _i17.ProductFormBloc(get<_i8.IProductRepository>()));
  gh.factory<_i18.ProfileBloc>(
      () => _i18.ProfileBloc(get<_i10.IProfileRepository>()));
  gh.factory<_i19.RequestBloc>(
      () => _i19.RequestBloc(get<_i12.IRequestRepository>()));
  gh.factory<_i20.SearchBloc>(
      () => _i20.SearchBloc(get<_i14.ISearchRepository>()));
  await gh.factoryAsync<_i21.SharedPreferences>(
      () => injectableModules.sharedPreferences,
      preResolve: true);
  gh.factory<_i22.FormApartmentBloc>(
      () => _i22.FormApartmentBloc(get<_i6.IApartmentRepository>()));
  gh.lazySingleton<_i23.IAuthFacade>(() => _i24.FirebaseAuthFacade(
      get<_i3.FirebaseAuth>(),
      get<_i5.GoogleSignIn>(),
      get<_i4.FirebaseFirestore>(),
      get<_i21.SharedPreferences>()));
  gh.factory<_i25.SignInCheckerBloc>(
      () => _i25.SignInCheckerBloc(get<_i23.IAuthFacade>()));
  gh.factory<_i26.AuthBloc>(() => _i26.AuthBloc(get<_i23.IAuthFacade>()));
  return get;
}

class _$InjectableModules extends _i27.InjectableModules {}
