// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;

import 'application/apartment/form_apartment_bloc.dart' as _i25;
import 'application/auth/auth_bloc.dart' as _i24;
import 'application/product/product_actor/product_actor_bloc.dart' as _i18;
import 'application/product/product_form/product_form_bloc.dart' as _i19;
import 'application/profile/profile_bloc.dart' as _i20;
import 'application/request/request_bloc.dart' as _i21;
import 'application/search/search_bloc.dart' as _i22;
import 'application/sign_in_checker/sign_in_checker_bloc.dart' as _i23;
import 'domain/apartment/i_apartment_repository.dart' as _i6;
import 'domain/auth/i_auth_facade.dart' as _i8;
import 'domain/product/i_product_repository.dart' as _i10;
import 'domain/profile/i_profile_repository.dart' as _i12;
import 'domain/request/i_request_repository.dart' as _i14;
import 'domain/search/i_search_repository.dart' as _i16;
import 'infrastructure/core/firebase_injectable_modules.dart' as _i26;
import 'infrastructure/repositories/apartment_repo.dart' as _i7;
import 'infrastructure/repositories/firebase_auth_facade.dart' as _i9;
import 'infrastructure/repositories/product_repo.dart' as _i11;
import 'infrastructure/repositories/profile_repo.dart' as _i13;
import 'infrastructure/repositories/request_repo.dart' as _i15;
import 'infrastructure/repositories/search_repo.dart'
    as _i17; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i10.IProductRepository>(() => _i11.ProductRepository(
      get<_i4.FirebaseFirestore>(), get<_i3.FirebaseAuth>()));
  gh.lazySingleton<_i12.IProfileRepository>(() => _i13.ProfileRepository(
      get<_i4.FirebaseFirestore>(), get<_i3.FirebaseAuth>()));
  gh.lazySingleton<_i14.IRequestRepository>(() => _i15.RequestRepository(
      get<_i4.FirebaseFirestore>(), get<_i3.FirebaseAuth>()));
  gh.lazySingleton<_i16.ISearchRepository>(
      () => _i17.SearchRepository(get<_i4.FirebaseFirestore>()));
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
  gh.factory<_i23.SignInCheckerBloc>(
      () => _i23.SignInCheckerBloc(get<_i8.IAuthFacade>()));
  gh.factory<_i24.AuthBloc>(() => _i24.AuthBloc(get<_i8.IAuthFacade>()));
  gh.factory<_i25.FormApartmentBloc>(
      () => _i25.FormApartmentBloc(get<_i6.IApartmentRepository>()));
  return get;
}

class _$FirebaseInjectableModules extends _i26.FirebaseInjectableModules {}
