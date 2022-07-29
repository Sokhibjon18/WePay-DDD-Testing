// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'form_apartment_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FormApartmentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Apartment apartment) editingApartment,
    required TResult Function(String region) regionChanged,
    required TResult Function(String district) districtChanged,
    required TResult Function(String street) streetNameChanged,
    required TResult Function(String house) houseNumberChanged,
    required TResult Function(String flat) flatNumberChanged,
    required TResult Function() creatApartment,
    required TResult Function(String uid, String ownerId) updateApartment,
    required TResult Function(Apartment apartment) deleteApartment,
    required TResult Function(List<Apartment> apartments)
        getApartmentUsersAndExpenses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Apartment apartment)? editingApartment,
    TResult Function(String region)? regionChanged,
    TResult Function(String district)? districtChanged,
    TResult Function(String street)? streetNameChanged,
    TResult Function(String house)? houseNumberChanged,
    TResult Function(String flat)? flatNumberChanged,
    TResult Function()? creatApartment,
    TResult Function(String uid, String ownerId)? updateApartment,
    TResult Function(Apartment apartment)? deleteApartment,
    TResult Function(List<Apartment> apartments)? getApartmentUsersAndExpenses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Apartment apartment)? editingApartment,
    TResult Function(String region)? regionChanged,
    TResult Function(String district)? districtChanged,
    TResult Function(String street)? streetNameChanged,
    TResult Function(String house)? houseNumberChanged,
    TResult Function(String flat)? flatNumberChanged,
    TResult Function()? creatApartment,
    TResult Function(String uid, String ownerId)? updateApartment,
    TResult Function(Apartment apartment)? deleteApartment,
    TResult Function(List<Apartment> apartments)? getApartmentUsersAndExpenses,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_EditingApartment value) editingApartment,
    required TResult Function(_RegionChanged value) regionChanged,
    required TResult Function(_DistrictChanged value) districtChanged,
    required TResult Function(_StreetNameChanged value) streetNameChanged,
    required TResult Function(_HouseNumberChanged value) houseNumberChanged,
    required TResult Function(_FlatNumberChanged value) flatNumberChanged,
    required TResult Function(_CreateApartment value) creatApartment,
    required TResult Function(_UpdateApartment value) updateApartment,
    required TResult Function(_DeleteApartment value) deleteApartment,
    required TResult Function(_GetApartmentUsersAndExpenses value)
        getApartmentUsersAndExpenses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_EditingApartment value)? editingApartment,
    TResult Function(_RegionChanged value)? regionChanged,
    TResult Function(_DistrictChanged value)? districtChanged,
    TResult Function(_StreetNameChanged value)? streetNameChanged,
    TResult Function(_HouseNumberChanged value)? houseNumberChanged,
    TResult Function(_FlatNumberChanged value)? flatNumberChanged,
    TResult Function(_CreateApartment value)? creatApartment,
    TResult Function(_UpdateApartment value)? updateApartment,
    TResult Function(_DeleteApartment value)? deleteApartment,
    TResult Function(_GetApartmentUsersAndExpenses value)?
        getApartmentUsersAndExpenses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_EditingApartment value)? editingApartment,
    TResult Function(_RegionChanged value)? regionChanged,
    TResult Function(_DistrictChanged value)? districtChanged,
    TResult Function(_StreetNameChanged value)? streetNameChanged,
    TResult Function(_HouseNumberChanged value)? houseNumberChanged,
    TResult Function(_FlatNumberChanged value)? flatNumberChanged,
    TResult Function(_CreateApartment value)? creatApartment,
    TResult Function(_UpdateApartment value)? updateApartment,
    TResult Function(_DeleteApartment value)? deleteApartment,
    TResult Function(_GetApartmentUsersAndExpenses value)?
        getApartmentUsersAndExpenses,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormApartmentEventCopyWith<$Res> {
  factory $FormApartmentEventCopyWith(
          FormApartmentEvent value, $Res Function(FormApartmentEvent) then) =
      _$FormApartmentEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FormApartmentEventCopyWithImpl<$Res>
    implements $FormApartmentEventCopyWith<$Res> {
  _$FormApartmentEventCopyWithImpl(this._value, this._then);

  final FormApartmentEvent _value;
  // ignore: unused_field
  final $Res Function(FormApartmentEvent) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$FormApartmentEventCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'FormApartmentEvent.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Apartment apartment) editingApartment,
    required TResult Function(String region) regionChanged,
    required TResult Function(String district) districtChanged,
    required TResult Function(String street) streetNameChanged,
    required TResult Function(String house) houseNumberChanged,
    required TResult Function(String flat) flatNumberChanged,
    required TResult Function() creatApartment,
    required TResult Function(String uid, String ownerId) updateApartment,
    required TResult Function(Apartment apartment) deleteApartment,
    required TResult Function(List<Apartment> apartments)
        getApartmentUsersAndExpenses,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Apartment apartment)? editingApartment,
    TResult Function(String region)? regionChanged,
    TResult Function(String district)? districtChanged,
    TResult Function(String street)? streetNameChanged,
    TResult Function(String house)? houseNumberChanged,
    TResult Function(String flat)? flatNumberChanged,
    TResult Function()? creatApartment,
    TResult Function(String uid, String ownerId)? updateApartment,
    TResult Function(Apartment apartment)? deleteApartment,
    TResult Function(List<Apartment> apartments)? getApartmentUsersAndExpenses,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Apartment apartment)? editingApartment,
    TResult Function(String region)? regionChanged,
    TResult Function(String district)? districtChanged,
    TResult Function(String street)? streetNameChanged,
    TResult Function(String house)? houseNumberChanged,
    TResult Function(String flat)? flatNumberChanged,
    TResult Function()? creatApartment,
    TResult Function(String uid, String ownerId)? updateApartment,
    TResult Function(Apartment apartment)? deleteApartment,
    TResult Function(List<Apartment> apartments)? getApartmentUsersAndExpenses,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_EditingApartment value) editingApartment,
    required TResult Function(_RegionChanged value) regionChanged,
    required TResult Function(_DistrictChanged value) districtChanged,
    required TResult Function(_StreetNameChanged value) streetNameChanged,
    required TResult Function(_HouseNumberChanged value) houseNumberChanged,
    required TResult Function(_FlatNumberChanged value) flatNumberChanged,
    required TResult Function(_CreateApartment value) creatApartment,
    required TResult Function(_UpdateApartment value) updateApartment,
    required TResult Function(_DeleteApartment value) deleteApartment,
    required TResult Function(_GetApartmentUsersAndExpenses value)
        getApartmentUsersAndExpenses,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_EditingApartment value)? editingApartment,
    TResult Function(_RegionChanged value)? regionChanged,
    TResult Function(_DistrictChanged value)? districtChanged,
    TResult Function(_StreetNameChanged value)? streetNameChanged,
    TResult Function(_HouseNumberChanged value)? houseNumberChanged,
    TResult Function(_FlatNumberChanged value)? flatNumberChanged,
    TResult Function(_CreateApartment value)? creatApartment,
    TResult Function(_UpdateApartment value)? updateApartment,
    TResult Function(_DeleteApartment value)? deleteApartment,
    TResult Function(_GetApartmentUsersAndExpenses value)?
        getApartmentUsersAndExpenses,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_EditingApartment value)? editingApartment,
    TResult Function(_RegionChanged value)? regionChanged,
    TResult Function(_DistrictChanged value)? districtChanged,
    TResult Function(_StreetNameChanged value)? streetNameChanged,
    TResult Function(_HouseNumberChanged value)? houseNumberChanged,
    TResult Function(_FlatNumberChanged value)? flatNumberChanged,
    TResult Function(_CreateApartment value)? creatApartment,
    TResult Function(_UpdateApartment value)? updateApartment,
    TResult Function(_DeleteApartment value)? deleteApartment,
    TResult Function(_GetApartmentUsersAndExpenses value)?
        getApartmentUsersAndExpenses,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements FormApartmentEvent {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_EditingApartmentCopyWith<$Res> {
  factory _$$_EditingApartmentCopyWith(
          _$_EditingApartment value, $Res Function(_$_EditingApartment) then) =
      __$$_EditingApartmentCopyWithImpl<$Res>;
  $Res call({Apartment apartment});

  $ApartmentCopyWith<$Res> get apartment;
}

/// @nodoc
class __$$_EditingApartmentCopyWithImpl<$Res>
    extends _$FormApartmentEventCopyWithImpl<$Res>
    implements _$$_EditingApartmentCopyWith<$Res> {
  __$$_EditingApartmentCopyWithImpl(
      _$_EditingApartment _value, $Res Function(_$_EditingApartment) _then)
      : super(_value, (v) => _then(v as _$_EditingApartment));

  @override
  _$_EditingApartment get _value => super._value as _$_EditingApartment;

  @override
  $Res call({
    Object? apartment = freezed,
  }) {
    return _then(_$_EditingApartment(
      apartment == freezed
          ? _value.apartment
          : apartment // ignore: cast_nullable_to_non_nullable
              as Apartment,
    ));
  }

  @override
  $ApartmentCopyWith<$Res> get apartment {
    return $ApartmentCopyWith<$Res>(_value.apartment, (value) {
      return _then(_value.copyWith(apartment: value));
    });
  }
}

/// @nodoc

class _$_EditingApartment implements _EditingApartment {
  const _$_EditingApartment(this.apartment);

  @override
  final Apartment apartment;

  @override
  String toString() {
    return 'FormApartmentEvent.editingApartment(apartment: $apartment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditingApartment &&
            const DeepCollectionEquality().equals(other.apartment, apartment));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(apartment));

  @JsonKey(ignore: true)
  @override
  _$$_EditingApartmentCopyWith<_$_EditingApartment> get copyWith =>
      __$$_EditingApartmentCopyWithImpl<_$_EditingApartment>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Apartment apartment) editingApartment,
    required TResult Function(String region) regionChanged,
    required TResult Function(String district) districtChanged,
    required TResult Function(String street) streetNameChanged,
    required TResult Function(String house) houseNumberChanged,
    required TResult Function(String flat) flatNumberChanged,
    required TResult Function() creatApartment,
    required TResult Function(String uid, String ownerId) updateApartment,
    required TResult Function(Apartment apartment) deleteApartment,
    required TResult Function(List<Apartment> apartments)
        getApartmentUsersAndExpenses,
  }) {
    return editingApartment(apartment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Apartment apartment)? editingApartment,
    TResult Function(String region)? regionChanged,
    TResult Function(String district)? districtChanged,
    TResult Function(String street)? streetNameChanged,
    TResult Function(String house)? houseNumberChanged,
    TResult Function(String flat)? flatNumberChanged,
    TResult Function()? creatApartment,
    TResult Function(String uid, String ownerId)? updateApartment,
    TResult Function(Apartment apartment)? deleteApartment,
    TResult Function(List<Apartment> apartments)? getApartmentUsersAndExpenses,
  }) {
    return editingApartment?.call(apartment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Apartment apartment)? editingApartment,
    TResult Function(String region)? regionChanged,
    TResult Function(String district)? districtChanged,
    TResult Function(String street)? streetNameChanged,
    TResult Function(String house)? houseNumberChanged,
    TResult Function(String flat)? flatNumberChanged,
    TResult Function()? creatApartment,
    TResult Function(String uid, String ownerId)? updateApartment,
    TResult Function(Apartment apartment)? deleteApartment,
    TResult Function(List<Apartment> apartments)? getApartmentUsersAndExpenses,
    required TResult orElse(),
  }) {
    if (editingApartment != null) {
      return editingApartment(apartment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_EditingApartment value) editingApartment,
    required TResult Function(_RegionChanged value) regionChanged,
    required TResult Function(_DistrictChanged value) districtChanged,
    required TResult Function(_StreetNameChanged value) streetNameChanged,
    required TResult Function(_HouseNumberChanged value) houseNumberChanged,
    required TResult Function(_FlatNumberChanged value) flatNumberChanged,
    required TResult Function(_CreateApartment value) creatApartment,
    required TResult Function(_UpdateApartment value) updateApartment,
    required TResult Function(_DeleteApartment value) deleteApartment,
    required TResult Function(_GetApartmentUsersAndExpenses value)
        getApartmentUsersAndExpenses,
  }) {
    return editingApartment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_EditingApartment value)? editingApartment,
    TResult Function(_RegionChanged value)? regionChanged,
    TResult Function(_DistrictChanged value)? districtChanged,
    TResult Function(_StreetNameChanged value)? streetNameChanged,
    TResult Function(_HouseNumberChanged value)? houseNumberChanged,
    TResult Function(_FlatNumberChanged value)? flatNumberChanged,
    TResult Function(_CreateApartment value)? creatApartment,
    TResult Function(_UpdateApartment value)? updateApartment,
    TResult Function(_DeleteApartment value)? deleteApartment,
    TResult Function(_GetApartmentUsersAndExpenses value)?
        getApartmentUsersAndExpenses,
  }) {
    return editingApartment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_EditingApartment value)? editingApartment,
    TResult Function(_RegionChanged value)? regionChanged,
    TResult Function(_DistrictChanged value)? districtChanged,
    TResult Function(_StreetNameChanged value)? streetNameChanged,
    TResult Function(_HouseNumberChanged value)? houseNumberChanged,
    TResult Function(_FlatNumberChanged value)? flatNumberChanged,
    TResult Function(_CreateApartment value)? creatApartment,
    TResult Function(_UpdateApartment value)? updateApartment,
    TResult Function(_DeleteApartment value)? deleteApartment,
    TResult Function(_GetApartmentUsersAndExpenses value)?
        getApartmentUsersAndExpenses,
    required TResult orElse(),
  }) {
    if (editingApartment != null) {
      return editingApartment(this);
    }
    return orElse();
  }
}

abstract class _EditingApartment implements FormApartmentEvent {
  const factory _EditingApartment(final Apartment apartment) =
      _$_EditingApartment;

  Apartment get apartment;
  @JsonKey(ignore: true)
  _$$_EditingApartmentCopyWith<_$_EditingApartment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RegionChangedCopyWith<$Res> {
  factory _$$_RegionChangedCopyWith(
          _$_RegionChanged value, $Res Function(_$_RegionChanged) then) =
      __$$_RegionChangedCopyWithImpl<$Res>;
  $Res call({String region});
}

/// @nodoc
class __$$_RegionChangedCopyWithImpl<$Res>
    extends _$FormApartmentEventCopyWithImpl<$Res>
    implements _$$_RegionChangedCopyWith<$Res> {
  __$$_RegionChangedCopyWithImpl(
      _$_RegionChanged _value, $Res Function(_$_RegionChanged) _then)
      : super(_value, (v) => _then(v as _$_RegionChanged));

  @override
  _$_RegionChanged get _value => super._value as _$_RegionChanged;

  @override
  $Res call({
    Object? region = freezed,
  }) {
    return _then(_$_RegionChanged(
      region == freezed
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RegionChanged implements _RegionChanged {
  const _$_RegionChanged(this.region);

  @override
  final String region;

  @override
  String toString() {
    return 'FormApartmentEvent.regionChanged(region: $region)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegionChanged &&
            const DeepCollectionEquality().equals(other.region, region));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(region));

  @JsonKey(ignore: true)
  @override
  _$$_RegionChangedCopyWith<_$_RegionChanged> get copyWith =>
      __$$_RegionChangedCopyWithImpl<_$_RegionChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Apartment apartment) editingApartment,
    required TResult Function(String region) regionChanged,
    required TResult Function(String district) districtChanged,
    required TResult Function(String street) streetNameChanged,
    required TResult Function(String house) houseNumberChanged,
    required TResult Function(String flat) flatNumberChanged,
    required TResult Function() creatApartment,
    required TResult Function(String uid, String ownerId) updateApartment,
    required TResult Function(Apartment apartment) deleteApartment,
    required TResult Function(List<Apartment> apartments)
        getApartmentUsersAndExpenses,
  }) {
    return regionChanged(region);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Apartment apartment)? editingApartment,
    TResult Function(String region)? regionChanged,
    TResult Function(String district)? districtChanged,
    TResult Function(String street)? streetNameChanged,
    TResult Function(String house)? houseNumberChanged,
    TResult Function(String flat)? flatNumberChanged,
    TResult Function()? creatApartment,
    TResult Function(String uid, String ownerId)? updateApartment,
    TResult Function(Apartment apartment)? deleteApartment,
    TResult Function(List<Apartment> apartments)? getApartmentUsersAndExpenses,
  }) {
    return regionChanged?.call(region);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Apartment apartment)? editingApartment,
    TResult Function(String region)? regionChanged,
    TResult Function(String district)? districtChanged,
    TResult Function(String street)? streetNameChanged,
    TResult Function(String house)? houseNumberChanged,
    TResult Function(String flat)? flatNumberChanged,
    TResult Function()? creatApartment,
    TResult Function(String uid, String ownerId)? updateApartment,
    TResult Function(Apartment apartment)? deleteApartment,
    TResult Function(List<Apartment> apartments)? getApartmentUsersAndExpenses,
    required TResult orElse(),
  }) {
    if (regionChanged != null) {
      return regionChanged(region);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_EditingApartment value) editingApartment,
    required TResult Function(_RegionChanged value) regionChanged,
    required TResult Function(_DistrictChanged value) districtChanged,
    required TResult Function(_StreetNameChanged value) streetNameChanged,
    required TResult Function(_HouseNumberChanged value) houseNumberChanged,
    required TResult Function(_FlatNumberChanged value) flatNumberChanged,
    required TResult Function(_CreateApartment value) creatApartment,
    required TResult Function(_UpdateApartment value) updateApartment,
    required TResult Function(_DeleteApartment value) deleteApartment,
    required TResult Function(_GetApartmentUsersAndExpenses value)
        getApartmentUsersAndExpenses,
  }) {
    return regionChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_EditingApartment value)? editingApartment,
    TResult Function(_RegionChanged value)? regionChanged,
    TResult Function(_DistrictChanged value)? districtChanged,
    TResult Function(_StreetNameChanged value)? streetNameChanged,
    TResult Function(_HouseNumberChanged value)? houseNumberChanged,
    TResult Function(_FlatNumberChanged value)? flatNumberChanged,
    TResult Function(_CreateApartment value)? creatApartment,
    TResult Function(_UpdateApartment value)? updateApartment,
    TResult Function(_DeleteApartment value)? deleteApartment,
    TResult Function(_GetApartmentUsersAndExpenses value)?
        getApartmentUsersAndExpenses,
  }) {
    return regionChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_EditingApartment value)? editingApartment,
    TResult Function(_RegionChanged value)? regionChanged,
    TResult Function(_DistrictChanged value)? districtChanged,
    TResult Function(_StreetNameChanged value)? streetNameChanged,
    TResult Function(_HouseNumberChanged value)? houseNumberChanged,
    TResult Function(_FlatNumberChanged value)? flatNumberChanged,
    TResult Function(_CreateApartment value)? creatApartment,
    TResult Function(_UpdateApartment value)? updateApartment,
    TResult Function(_DeleteApartment value)? deleteApartment,
    TResult Function(_GetApartmentUsersAndExpenses value)?
        getApartmentUsersAndExpenses,
    required TResult orElse(),
  }) {
    if (regionChanged != null) {
      return regionChanged(this);
    }
    return orElse();
  }
}

abstract class _RegionChanged implements FormApartmentEvent {
  const factory _RegionChanged(final String region) = _$_RegionChanged;

  String get region;
  @JsonKey(ignore: true)
  _$$_RegionChangedCopyWith<_$_RegionChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DistrictChangedCopyWith<$Res> {
  factory _$$_DistrictChangedCopyWith(
          _$_DistrictChanged value, $Res Function(_$_DistrictChanged) then) =
      __$$_DistrictChangedCopyWithImpl<$Res>;
  $Res call({String district});
}

/// @nodoc
class __$$_DistrictChangedCopyWithImpl<$Res>
    extends _$FormApartmentEventCopyWithImpl<$Res>
    implements _$$_DistrictChangedCopyWith<$Res> {
  __$$_DistrictChangedCopyWithImpl(
      _$_DistrictChanged _value, $Res Function(_$_DistrictChanged) _then)
      : super(_value, (v) => _then(v as _$_DistrictChanged));

  @override
  _$_DistrictChanged get _value => super._value as _$_DistrictChanged;

  @override
  $Res call({
    Object? district = freezed,
  }) {
    return _then(_$_DistrictChanged(
      district == freezed
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DistrictChanged implements _DistrictChanged {
  const _$_DistrictChanged(this.district);

  @override
  final String district;

  @override
  String toString() {
    return 'FormApartmentEvent.districtChanged(district: $district)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DistrictChanged &&
            const DeepCollectionEquality().equals(other.district, district));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(district));

  @JsonKey(ignore: true)
  @override
  _$$_DistrictChangedCopyWith<_$_DistrictChanged> get copyWith =>
      __$$_DistrictChangedCopyWithImpl<_$_DistrictChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Apartment apartment) editingApartment,
    required TResult Function(String region) regionChanged,
    required TResult Function(String district) districtChanged,
    required TResult Function(String street) streetNameChanged,
    required TResult Function(String house) houseNumberChanged,
    required TResult Function(String flat) flatNumberChanged,
    required TResult Function() creatApartment,
    required TResult Function(String uid, String ownerId) updateApartment,
    required TResult Function(Apartment apartment) deleteApartment,
    required TResult Function(List<Apartment> apartments)
        getApartmentUsersAndExpenses,
  }) {
    return districtChanged(district);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Apartment apartment)? editingApartment,
    TResult Function(String region)? regionChanged,
    TResult Function(String district)? districtChanged,
    TResult Function(String street)? streetNameChanged,
    TResult Function(String house)? houseNumberChanged,
    TResult Function(String flat)? flatNumberChanged,
    TResult Function()? creatApartment,
    TResult Function(String uid, String ownerId)? updateApartment,
    TResult Function(Apartment apartment)? deleteApartment,
    TResult Function(List<Apartment> apartments)? getApartmentUsersAndExpenses,
  }) {
    return districtChanged?.call(district);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Apartment apartment)? editingApartment,
    TResult Function(String region)? regionChanged,
    TResult Function(String district)? districtChanged,
    TResult Function(String street)? streetNameChanged,
    TResult Function(String house)? houseNumberChanged,
    TResult Function(String flat)? flatNumberChanged,
    TResult Function()? creatApartment,
    TResult Function(String uid, String ownerId)? updateApartment,
    TResult Function(Apartment apartment)? deleteApartment,
    TResult Function(List<Apartment> apartments)? getApartmentUsersAndExpenses,
    required TResult orElse(),
  }) {
    if (districtChanged != null) {
      return districtChanged(district);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_EditingApartment value) editingApartment,
    required TResult Function(_RegionChanged value) regionChanged,
    required TResult Function(_DistrictChanged value) districtChanged,
    required TResult Function(_StreetNameChanged value) streetNameChanged,
    required TResult Function(_HouseNumberChanged value) houseNumberChanged,
    required TResult Function(_FlatNumberChanged value) flatNumberChanged,
    required TResult Function(_CreateApartment value) creatApartment,
    required TResult Function(_UpdateApartment value) updateApartment,
    required TResult Function(_DeleteApartment value) deleteApartment,
    required TResult Function(_GetApartmentUsersAndExpenses value)
        getApartmentUsersAndExpenses,
  }) {
    return districtChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_EditingApartment value)? editingApartment,
    TResult Function(_RegionChanged value)? regionChanged,
    TResult Function(_DistrictChanged value)? districtChanged,
    TResult Function(_StreetNameChanged value)? streetNameChanged,
    TResult Function(_HouseNumberChanged value)? houseNumberChanged,
    TResult Function(_FlatNumberChanged value)? flatNumberChanged,
    TResult Function(_CreateApartment value)? creatApartment,
    TResult Function(_UpdateApartment value)? updateApartment,
    TResult Function(_DeleteApartment value)? deleteApartment,
    TResult Function(_GetApartmentUsersAndExpenses value)?
        getApartmentUsersAndExpenses,
  }) {
    return districtChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_EditingApartment value)? editingApartment,
    TResult Function(_RegionChanged value)? regionChanged,
    TResult Function(_DistrictChanged value)? districtChanged,
    TResult Function(_StreetNameChanged value)? streetNameChanged,
    TResult Function(_HouseNumberChanged value)? houseNumberChanged,
    TResult Function(_FlatNumberChanged value)? flatNumberChanged,
    TResult Function(_CreateApartment value)? creatApartment,
    TResult Function(_UpdateApartment value)? updateApartment,
    TResult Function(_DeleteApartment value)? deleteApartment,
    TResult Function(_GetApartmentUsersAndExpenses value)?
        getApartmentUsersAndExpenses,
    required TResult orElse(),
  }) {
    if (districtChanged != null) {
      return districtChanged(this);
    }
    return orElse();
  }
}

abstract class _DistrictChanged implements FormApartmentEvent {
  const factory _DistrictChanged(final String district) = _$_DistrictChanged;

  String get district;
  @JsonKey(ignore: true)
  _$$_DistrictChangedCopyWith<_$_DistrictChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_StreetNameChangedCopyWith<$Res> {
  factory _$$_StreetNameChangedCopyWith(_$_StreetNameChanged value,
          $Res Function(_$_StreetNameChanged) then) =
      __$$_StreetNameChangedCopyWithImpl<$Res>;
  $Res call({String street});
}

/// @nodoc
class __$$_StreetNameChangedCopyWithImpl<$Res>
    extends _$FormApartmentEventCopyWithImpl<$Res>
    implements _$$_StreetNameChangedCopyWith<$Res> {
  __$$_StreetNameChangedCopyWithImpl(
      _$_StreetNameChanged _value, $Res Function(_$_StreetNameChanged) _then)
      : super(_value, (v) => _then(v as _$_StreetNameChanged));

  @override
  _$_StreetNameChanged get _value => super._value as _$_StreetNameChanged;

  @override
  $Res call({
    Object? street = freezed,
  }) {
    return _then(_$_StreetNameChanged(
      street == freezed
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_StreetNameChanged implements _StreetNameChanged {
  const _$_StreetNameChanged(this.street);

  @override
  final String street;

  @override
  String toString() {
    return 'FormApartmentEvent.streetNameChanged(street: $street)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StreetNameChanged &&
            const DeepCollectionEquality().equals(other.street, street));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(street));

  @JsonKey(ignore: true)
  @override
  _$$_StreetNameChangedCopyWith<_$_StreetNameChanged> get copyWith =>
      __$$_StreetNameChangedCopyWithImpl<_$_StreetNameChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Apartment apartment) editingApartment,
    required TResult Function(String region) regionChanged,
    required TResult Function(String district) districtChanged,
    required TResult Function(String street) streetNameChanged,
    required TResult Function(String house) houseNumberChanged,
    required TResult Function(String flat) flatNumberChanged,
    required TResult Function() creatApartment,
    required TResult Function(String uid, String ownerId) updateApartment,
    required TResult Function(Apartment apartment) deleteApartment,
    required TResult Function(List<Apartment> apartments)
        getApartmentUsersAndExpenses,
  }) {
    return streetNameChanged(street);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Apartment apartment)? editingApartment,
    TResult Function(String region)? regionChanged,
    TResult Function(String district)? districtChanged,
    TResult Function(String street)? streetNameChanged,
    TResult Function(String house)? houseNumberChanged,
    TResult Function(String flat)? flatNumberChanged,
    TResult Function()? creatApartment,
    TResult Function(String uid, String ownerId)? updateApartment,
    TResult Function(Apartment apartment)? deleteApartment,
    TResult Function(List<Apartment> apartments)? getApartmentUsersAndExpenses,
  }) {
    return streetNameChanged?.call(street);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Apartment apartment)? editingApartment,
    TResult Function(String region)? regionChanged,
    TResult Function(String district)? districtChanged,
    TResult Function(String street)? streetNameChanged,
    TResult Function(String house)? houseNumberChanged,
    TResult Function(String flat)? flatNumberChanged,
    TResult Function()? creatApartment,
    TResult Function(String uid, String ownerId)? updateApartment,
    TResult Function(Apartment apartment)? deleteApartment,
    TResult Function(List<Apartment> apartments)? getApartmentUsersAndExpenses,
    required TResult orElse(),
  }) {
    if (streetNameChanged != null) {
      return streetNameChanged(street);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_EditingApartment value) editingApartment,
    required TResult Function(_RegionChanged value) regionChanged,
    required TResult Function(_DistrictChanged value) districtChanged,
    required TResult Function(_StreetNameChanged value) streetNameChanged,
    required TResult Function(_HouseNumberChanged value) houseNumberChanged,
    required TResult Function(_FlatNumberChanged value) flatNumberChanged,
    required TResult Function(_CreateApartment value) creatApartment,
    required TResult Function(_UpdateApartment value) updateApartment,
    required TResult Function(_DeleteApartment value) deleteApartment,
    required TResult Function(_GetApartmentUsersAndExpenses value)
        getApartmentUsersAndExpenses,
  }) {
    return streetNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_EditingApartment value)? editingApartment,
    TResult Function(_RegionChanged value)? regionChanged,
    TResult Function(_DistrictChanged value)? districtChanged,
    TResult Function(_StreetNameChanged value)? streetNameChanged,
    TResult Function(_HouseNumberChanged value)? houseNumberChanged,
    TResult Function(_FlatNumberChanged value)? flatNumberChanged,
    TResult Function(_CreateApartment value)? creatApartment,
    TResult Function(_UpdateApartment value)? updateApartment,
    TResult Function(_DeleteApartment value)? deleteApartment,
    TResult Function(_GetApartmentUsersAndExpenses value)?
        getApartmentUsersAndExpenses,
  }) {
    return streetNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_EditingApartment value)? editingApartment,
    TResult Function(_RegionChanged value)? regionChanged,
    TResult Function(_DistrictChanged value)? districtChanged,
    TResult Function(_StreetNameChanged value)? streetNameChanged,
    TResult Function(_HouseNumberChanged value)? houseNumberChanged,
    TResult Function(_FlatNumberChanged value)? flatNumberChanged,
    TResult Function(_CreateApartment value)? creatApartment,
    TResult Function(_UpdateApartment value)? updateApartment,
    TResult Function(_DeleteApartment value)? deleteApartment,
    TResult Function(_GetApartmentUsersAndExpenses value)?
        getApartmentUsersAndExpenses,
    required TResult orElse(),
  }) {
    if (streetNameChanged != null) {
      return streetNameChanged(this);
    }
    return orElse();
  }
}

abstract class _StreetNameChanged implements FormApartmentEvent {
  const factory _StreetNameChanged(final String street) = _$_StreetNameChanged;

  String get street;
  @JsonKey(ignore: true)
  _$$_StreetNameChangedCopyWith<_$_StreetNameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_HouseNumberChangedCopyWith<$Res> {
  factory _$$_HouseNumberChangedCopyWith(_$_HouseNumberChanged value,
          $Res Function(_$_HouseNumberChanged) then) =
      __$$_HouseNumberChangedCopyWithImpl<$Res>;
  $Res call({String house});
}

/// @nodoc
class __$$_HouseNumberChangedCopyWithImpl<$Res>
    extends _$FormApartmentEventCopyWithImpl<$Res>
    implements _$$_HouseNumberChangedCopyWith<$Res> {
  __$$_HouseNumberChangedCopyWithImpl(
      _$_HouseNumberChanged _value, $Res Function(_$_HouseNumberChanged) _then)
      : super(_value, (v) => _then(v as _$_HouseNumberChanged));

  @override
  _$_HouseNumberChanged get _value => super._value as _$_HouseNumberChanged;

  @override
  $Res call({
    Object? house = freezed,
  }) {
    return _then(_$_HouseNumberChanged(
      house == freezed
          ? _value.house
          : house // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_HouseNumberChanged implements _HouseNumberChanged {
  const _$_HouseNumberChanged(this.house);

  @override
  final String house;

  @override
  String toString() {
    return 'FormApartmentEvent.houseNumberChanged(house: $house)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HouseNumberChanged &&
            const DeepCollectionEquality().equals(other.house, house));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(house));

  @JsonKey(ignore: true)
  @override
  _$$_HouseNumberChangedCopyWith<_$_HouseNumberChanged> get copyWith =>
      __$$_HouseNumberChangedCopyWithImpl<_$_HouseNumberChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Apartment apartment) editingApartment,
    required TResult Function(String region) regionChanged,
    required TResult Function(String district) districtChanged,
    required TResult Function(String street) streetNameChanged,
    required TResult Function(String house) houseNumberChanged,
    required TResult Function(String flat) flatNumberChanged,
    required TResult Function() creatApartment,
    required TResult Function(String uid, String ownerId) updateApartment,
    required TResult Function(Apartment apartment) deleteApartment,
    required TResult Function(List<Apartment> apartments)
        getApartmentUsersAndExpenses,
  }) {
    return houseNumberChanged(house);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Apartment apartment)? editingApartment,
    TResult Function(String region)? regionChanged,
    TResult Function(String district)? districtChanged,
    TResult Function(String street)? streetNameChanged,
    TResult Function(String house)? houseNumberChanged,
    TResult Function(String flat)? flatNumberChanged,
    TResult Function()? creatApartment,
    TResult Function(String uid, String ownerId)? updateApartment,
    TResult Function(Apartment apartment)? deleteApartment,
    TResult Function(List<Apartment> apartments)? getApartmentUsersAndExpenses,
  }) {
    return houseNumberChanged?.call(house);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Apartment apartment)? editingApartment,
    TResult Function(String region)? regionChanged,
    TResult Function(String district)? districtChanged,
    TResult Function(String street)? streetNameChanged,
    TResult Function(String house)? houseNumberChanged,
    TResult Function(String flat)? flatNumberChanged,
    TResult Function()? creatApartment,
    TResult Function(String uid, String ownerId)? updateApartment,
    TResult Function(Apartment apartment)? deleteApartment,
    TResult Function(List<Apartment> apartments)? getApartmentUsersAndExpenses,
    required TResult orElse(),
  }) {
    if (houseNumberChanged != null) {
      return houseNumberChanged(house);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_EditingApartment value) editingApartment,
    required TResult Function(_RegionChanged value) regionChanged,
    required TResult Function(_DistrictChanged value) districtChanged,
    required TResult Function(_StreetNameChanged value) streetNameChanged,
    required TResult Function(_HouseNumberChanged value) houseNumberChanged,
    required TResult Function(_FlatNumberChanged value) flatNumberChanged,
    required TResult Function(_CreateApartment value) creatApartment,
    required TResult Function(_UpdateApartment value) updateApartment,
    required TResult Function(_DeleteApartment value) deleteApartment,
    required TResult Function(_GetApartmentUsersAndExpenses value)
        getApartmentUsersAndExpenses,
  }) {
    return houseNumberChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_EditingApartment value)? editingApartment,
    TResult Function(_RegionChanged value)? regionChanged,
    TResult Function(_DistrictChanged value)? districtChanged,
    TResult Function(_StreetNameChanged value)? streetNameChanged,
    TResult Function(_HouseNumberChanged value)? houseNumberChanged,
    TResult Function(_FlatNumberChanged value)? flatNumberChanged,
    TResult Function(_CreateApartment value)? creatApartment,
    TResult Function(_UpdateApartment value)? updateApartment,
    TResult Function(_DeleteApartment value)? deleteApartment,
    TResult Function(_GetApartmentUsersAndExpenses value)?
        getApartmentUsersAndExpenses,
  }) {
    return houseNumberChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_EditingApartment value)? editingApartment,
    TResult Function(_RegionChanged value)? regionChanged,
    TResult Function(_DistrictChanged value)? districtChanged,
    TResult Function(_StreetNameChanged value)? streetNameChanged,
    TResult Function(_HouseNumberChanged value)? houseNumberChanged,
    TResult Function(_FlatNumberChanged value)? flatNumberChanged,
    TResult Function(_CreateApartment value)? creatApartment,
    TResult Function(_UpdateApartment value)? updateApartment,
    TResult Function(_DeleteApartment value)? deleteApartment,
    TResult Function(_GetApartmentUsersAndExpenses value)?
        getApartmentUsersAndExpenses,
    required TResult orElse(),
  }) {
    if (houseNumberChanged != null) {
      return houseNumberChanged(this);
    }
    return orElse();
  }
}

abstract class _HouseNumberChanged implements FormApartmentEvent {
  const factory _HouseNumberChanged(final String house) = _$_HouseNumberChanged;

  String get house;
  @JsonKey(ignore: true)
  _$$_HouseNumberChangedCopyWith<_$_HouseNumberChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FlatNumberChangedCopyWith<$Res> {
  factory _$$_FlatNumberChangedCopyWith(_$_FlatNumberChanged value,
          $Res Function(_$_FlatNumberChanged) then) =
      __$$_FlatNumberChangedCopyWithImpl<$Res>;
  $Res call({String flat});
}

/// @nodoc
class __$$_FlatNumberChangedCopyWithImpl<$Res>
    extends _$FormApartmentEventCopyWithImpl<$Res>
    implements _$$_FlatNumberChangedCopyWith<$Res> {
  __$$_FlatNumberChangedCopyWithImpl(
      _$_FlatNumberChanged _value, $Res Function(_$_FlatNumberChanged) _then)
      : super(_value, (v) => _then(v as _$_FlatNumberChanged));

  @override
  _$_FlatNumberChanged get _value => super._value as _$_FlatNumberChanged;

  @override
  $Res call({
    Object? flat = freezed,
  }) {
    return _then(_$_FlatNumberChanged(
      flat == freezed
          ? _value.flat
          : flat // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FlatNumberChanged implements _FlatNumberChanged {
  const _$_FlatNumberChanged(this.flat);

  @override
  final String flat;

  @override
  String toString() {
    return 'FormApartmentEvent.flatNumberChanged(flat: $flat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlatNumberChanged &&
            const DeepCollectionEquality().equals(other.flat, flat));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(flat));

  @JsonKey(ignore: true)
  @override
  _$$_FlatNumberChangedCopyWith<_$_FlatNumberChanged> get copyWith =>
      __$$_FlatNumberChangedCopyWithImpl<_$_FlatNumberChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Apartment apartment) editingApartment,
    required TResult Function(String region) regionChanged,
    required TResult Function(String district) districtChanged,
    required TResult Function(String street) streetNameChanged,
    required TResult Function(String house) houseNumberChanged,
    required TResult Function(String flat) flatNumberChanged,
    required TResult Function() creatApartment,
    required TResult Function(String uid, String ownerId) updateApartment,
    required TResult Function(Apartment apartment) deleteApartment,
    required TResult Function(List<Apartment> apartments)
        getApartmentUsersAndExpenses,
  }) {
    return flatNumberChanged(flat);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Apartment apartment)? editingApartment,
    TResult Function(String region)? regionChanged,
    TResult Function(String district)? districtChanged,
    TResult Function(String street)? streetNameChanged,
    TResult Function(String house)? houseNumberChanged,
    TResult Function(String flat)? flatNumberChanged,
    TResult Function()? creatApartment,
    TResult Function(String uid, String ownerId)? updateApartment,
    TResult Function(Apartment apartment)? deleteApartment,
    TResult Function(List<Apartment> apartments)? getApartmentUsersAndExpenses,
  }) {
    return flatNumberChanged?.call(flat);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Apartment apartment)? editingApartment,
    TResult Function(String region)? regionChanged,
    TResult Function(String district)? districtChanged,
    TResult Function(String street)? streetNameChanged,
    TResult Function(String house)? houseNumberChanged,
    TResult Function(String flat)? flatNumberChanged,
    TResult Function()? creatApartment,
    TResult Function(String uid, String ownerId)? updateApartment,
    TResult Function(Apartment apartment)? deleteApartment,
    TResult Function(List<Apartment> apartments)? getApartmentUsersAndExpenses,
    required TResult orElse(),
  }) {
    if (flatNumberChanged != null) {
      return flatNumberChanged(flat);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_EditingApartment value) editingApartment,
    required TResult Function(_RegionChanged value) regionChanged,
    required TResult Function(_DistrictChanged value) districtChanged,
    required TResult Function(_StreetNameChanged value) streetNameChanged,
    required TResult Function(_HouseNumberChanged value) houseNumberChanged,
    required TResult Function(_FlatNumberChanged value) flatNumberChanged,
    required TResult Function(_CreateApartment value) creatApartment,
    required TResult Function(_UpdateApartment value) updateApartment,
    required TResult Function(_DeleteApartment value) deleteApartment,
    required TResult Function(_GetApartmentUsersAndExpenses value)
        getApartmentUsersAndExpenses,
  }) {
    return flatNumberChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_EditingApartment value)? editingApartment,
    TResult Function(_RegionChanged value)? regionChanged,
    TResult Function(_DistrictChanged value)? districtChanged,
    TResult Function(_StreetNameChanged value)? streetNameChanged,
    TResult Function(_HouseNumberChanged value)? houseNumberChanged,
    TResult Function(_FlatNumberChanged value)? flatNumberChanged,
    TResult Function(_CreateApartment value)? creatApartment,
    TResult Function(_UpdateApartment value)? updateApartment,
    TResult Function(_DeleteApartment value)? deleteApartment,
    TResult Function(_GetApartmentUsersAndExpenses value)?
        getApartmentUsersAndExpenses,
  }) {
    return flatNumberChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_EditingApartment value)? editingApartment,
    TResult Function(_RegionChanged value)? regionChanged,
    TResult Function(_DistrictChanged value)? districtChanged,
    TResult Function(_StreetNameChanged value)? streetNameChanged,
    TResult Function(_HouseNumberChanged value)? houseNumberChanged,
    TResult Function(_FlatNumberChanged value)? flatNumberChanged,
    TResult Function(_CreateApartment value)? creatApartment,
    TResult Function(_UpdateApartment value)? updateApartment,
    TResult Function(_DeleteApartment value)? deleteApartment,
    TResult Function(_GetApartmentUsersAndExpenses value)?
        getApartmentUsersAndExpenses,
    required TResult orElse(),
  }) {
    if (flatNumberChanged != null) {
      return flatNumberChanged(this);
    }
    return orElse();
  }
}

abstract class _FlatNumberChanged implements FormApartmentEvent {
  const factory _FlatNumberChanged(final String flat) = _$_FlatNumberChanged;

  String get flat;
  @JsonKey(ignore: true)
  _$$_FlatNumberChangedCopyWith<_$_FlatNumberChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CreateApartmentCopyWith<$Res> {
  factory _$$_CreateApartmentCopyWith(
          _$_CreateApartment value, $Res Function(_$_CreateApartment) then) =
      __$$_CreateApartmentCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CreateApartmentCopyWithImpl<$Res>
    extends _$FormApartmentEventCopyWithImpl<$Res>
    implements _$$_CreateApartmentCopyWith<$Res> {
  __$$_CreateApartmentCopyWithImpl(
      _$_CreateApartment _value, $Res Function(_$_CreateApartment) _then)
      : super(_value, (v) => _then(v as _$_CreateApartment));

  @override
  _$_CreateApartment get _value => super._value as _$_CreateApartment;
}

/// @nodoc

class _$_CreateApartment implements _CreateApartment {
  const _$_CreateApartment();

  @override
  String toString() {
    return 'FormApartmentEvent.creatApartment()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CreateApartment);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Apartment apartment) editingApartment,
    required TResult Function(String region) regionChanged,
    required TResult Function(String district) districtChanged,
    required TResult Function(String street) streetNameChanged,
    required TResult Function(String house) houseNumberChanged,
    required TResult Function(String flat) flatNumberChanged,
    required TResult Function() creatApartment,
    required TResult Function(String uid, String ownerId) updateApartment,
    required TResult Function(Apartment apartment) deleteApartment,
    required TResult Function(List<Apartment> apartments)
        getApartmentUsersAndExpenses,
  }) {
    return creatApartment();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Apartment apartment)? editingApartment,
    TResult Function(String region)? regionChanged,
    TResult Function(String district)? districtChanged,
    TResult Function(String street)? streetNameChanged,
    TResult Function(String house)? houseNumberChanged,
    TResult Function(String flat)? flatNumberChanged,
    TResult Function()? creatApartment,
    TResult Function(String uid, String ownerId)? updateApartment,
    TResult Function(Apartment apartment)? deleteApartment,
    TResult Function(List<Apartment> apartments)? getApartmentUsersAndExpenses,
  }) {
    return creatApartment?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Apartment apartment)? editingApartment,
    TResult Function(String region)? regionChanged,
    TResult Function(String district)? districtChanged,
    TResult Function(String street)? streetNameChanged,
    TResult Function(String house)? houseNumberChanged,
    TResult Function(String flat)? flatNumberChanged,
    TResult Function()? creatApartment,
    TResult Function(String uid, String ownerId)? updateApartment,
    TResult Function(Apartment apartment)? deleteApartment,
    TResult Function(List<Apartment> apartments)? getApartmentUsersAndExpenses,
    required TResult orElse(),
  }) {
    if (creatApartment != null) {
      return creatApartment();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_EditingApartment value) editingApartment,
    required TResult Function(_RegionChanged value) regionChanged,
    required TResult Function(_DistrictChanged value) districtChanged,
    required TResult Function(_StreetNameChanged value) streetNameChanged,
    required TResult Function(_HouseNumberChanged value) houseNumberChanged,
    required TResult Function(_FlatNumberChanged value) flatNumberChanged,
    required TResult Function(_CreateApartment value) creatApartment,
    required TResult Function(_UpdateApartment value) updateApartment,
    required TResult Function(_DeleteApartment value) deleteApartment,
    required TResult Function(_GetApartmentUsersAndExpenses value)
        getApartmentUsersAndExpenses,
  }) {
    return creatApartment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_EditingApartment value)? editingApartment,
    TResult Function(_RegionChanged value)? regionChanged,
    TResult Function(_DistrictChanged value)? districtChanged,
    TResult Function(_StreetNameChanged value)? streetNameChanged,
    TResult Function(_HouseNumberChanged value)? houseNumberChanged,
    TResult Function(_FlatNumberChanged value)? flatNumberChanged,
    TResult Function(_CreateApartment value)? creatApartment,
    TResult Function(_UpdateApartment value)? updateApartment,
    TResult Function(_DeleteApartment value)? deleteApartment,
    TResult Function(_GetApartmentUsersAndExpenses value)?
        getApartmentUsersAndExpenses,
  }) {
    return creatApartment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_EditingApartment value)? editingApartment,
    TResult Function(_RegionChanged value)? regionChanged,
    TResult Function(_DistrictChanged value)? districtChanged,
    TResult Function(_StreetNameChanged value)? streetNameChanged,
    TResult Function(_HouseNumberChanged value)? houseNumberChanged,
    TResult Function(_FlatNumberChanged value)? flatNumberChanged,
    TResult Function(_CreateApartment value)? creatApartment,
    TResult Function(_UpdateApartment value)? updateApartment,
    TResult Function(_DeleteApartment value)? deleteApartment,
    TResult Function(_GetApartmentUsersAndExpenses value)?
        getApartmentUsersAndExpenses,
    required TResult orElse(),
  }) {
    if (creatApartment != null) {
      return creatApartment(this);
    }
    return orElse();
  }
}

abstract class _CreateApartment implements FormApartmentEvent {
  const factory _CreateApartment() = _$_CreateApartment;
}

/// @nodoc
abstract class _$$_UpdateApartmentCopyWith<$Res> {
  factory _$$_UpdateApartmentCopyWith(
          _$_UpdateApartment value, $Res Function(_$_UpdateApartment) then) =
      __$$_UpdateApartmentCopyWithImpl<$Res>;
  $Res call({String uid, String ownerId});
}

/// @nodoc
class __$$_UpdateApartmentCopyWithImpl<$Res>
    extends _$FormApartmentEventCopyWithImpl<$Res>
    implements _$$_UpdateApartmentCopyWith<$Res> {
  __$$_UpdateApartmentCopyWithImpl(
      _$_UpdateApartment _value, $Res Function(_$_UpdateApartment) _then)
      : super(_value, (v) => _then(v as _$_UpdateApartment));

  @override
  _$_UpdateApartment get _value => super._value as _$_UpdateApartment;

  @override
  $Res call({
    Object? uid = freezed,
    Object? ownerId = freezed,
  }) {
    return _then(_$_UpdateApartment(
      uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      ownerId == freezed
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UpdateApartment implements _UpdateApartment {
  const _$_UpdateApartment(this.uid, this.ownerId);

  @override
  final String uid;
  @override
  final String ownerId;

  @override
  String toString() {
    return 'FormApartmentEvent.updateApartment(uid: $uid, ownerId: $ownerId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateApartment &&
            const DeepCollectionEquality().equals(other.uid, uid) &&
            const DeepCollectionEquality().equals(other.ownerId, ownerId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uid),
      const DeepCollectionEquality().hash(ownerId));

  @JsonKey(ignore: true)
  @override
  _$$_UpdateApartmentCopyWith<_$_UpdateApartment> get copyWith =>
      __$$_UpdateApartmentCopyWithImpl<_$_UpdateApartment>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Apartment apartment) editingApartment,
    required TResult Function(String region) regionChanged,
    required TResult Function(String district) districtChanged,
    required TResult Function(String street) streetNameChanged,
    required TResult Function(String house) houseNumberChanged,
    required TResult Function(String flat) flatNumberChanged,
    required TResult Function() creatApartment,
    required TResult Function(String uid, String ownerId) updateApartment,
    required TResult Function(Apartment apartment) deleteApartment,
    required TResult Function(List<Apartment> apartments)
        getApartmentUsersAndExpenses,
  }) {
    return updateApartment(uid, ownerId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Apartment apartment)? editingApartment,
    TResult Function(String region)? regionChanged,
    TResult Function(String district)? districtChanged,
    TResult Function(String street)? streetNameChanged,
    TResult Function(String house)? houseNumberChanged,
    TResult Function(String flat)? flatNumberChanged,
    TResult Function()? creatApartment,
    TResult Function(String uid, String ownerId)? updateApartment,
    TResult Function(Apartment apartment)? deleteApartment,
    TResult Function(List<Apartment> apartments)? getApartmentUsersAndExpenses,
  }) {
    return updateApartment?.call(uid, ownerId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Apartment apartment)? editingApartment,
    TResult Function(String region)? regionChanged,
    TResult Function(String district)? districtChanged,
    TResult Function(String street)? streetNameChanged,
    TResult Function(String house)? houseNumberChanged,
    TResult Function(String flat)? flatNumberChanged,
    TResult Function()? creatApartment,
    TResult Function(String uid, String ownerId)? updateApartment,
    TResult Function(Apartment apartment)? deleteApartment,
    TResult Function(List<Apartment> apartments)? getApartmentUsersAndExpenses,
    required TResult orElse(),
  }) {
    if (updateApartment != null) {
      return updateApartment(uid, ownerId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_EditingApartment value) editingApartment,
    required TResult Function(_RegionChanged value) regionChanged,
    required TResult Function(_DistrictChanged value) districtChanged,
    required TResult Function(_StreetNameChanged value) streetNameChanged,
    required TResult Function(_HouseNumberChanged value) houseNumberChanged,
    required TResult Function(_FlatNumberChanged value) flatNumberChanged,
    required TResult Function(_CreateApartment value) creatApartment,
    required TResult Function(_UpdateApartment value) updateApartment,
    required TResult Function(_DeleteApartment value) deleteApartment,
    required TResult Function(_GetApartmentUsersAndExpenses value)
        getApartmentUsersAndExpenses,
  }) {
    return updateApartment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_EditingApartment value)? editingApartment,
    TResult Function(_RegionChanged value)? regionChanged,
    TResult Function(_DistrictChanged value)? districtChanged,
    TResult Function(_StreetNameChanged value)? streetNameChanged,
    TResult Function(_HouseNumberChanged value)? houseNumberChanged,
    TResult Function(_FlatNumberChanged value)? flatNumberChanged,
    TResult Function(_CreateApartment value)? creatApartment,
    TResult Function(_UpdateApartment value)? updateApartment,
    TResult Function(_DeleteApartment value)? deleteApartment,
    TResult Function(_GetApartmentUsersAndExpenses value)?
        getApartmentUsersAndExpenses,
  }) {
    return updateApartment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_EditingApartment value)? editingApartment,
    TResult Function(_RegionChanged value)? regionChanged,
    TResult Function(_DistrictChanged value)? districtChanged,
    TResult Function(_StreetNameChanged value)? streetNameChanged,
    TResult Function(_HouseNumberChanged value)? houseNumberChanged,
    TResult Function(_FlatNumberChanged value)? flatNumberChanged,
    TResult Function(_CreateApartment value)? creatApartment,
    TResult Function(_UpdateApartment value)? updateApartment,
    TResult Function(_DeleteApartment value)? deleteApartment,
    TResult Function(_GetApartmentUsersAndExpenses value)?
        getApartmentUsersAndExpenses,
    required TResult orElse(),
  }) {
    if (updateApartment != null) {
      return updateApartment(this);
    }
    return orElse();
  }
}

abstract class _UpdateApartment implements FormApartmentEvent {
  const factory _UpdateApartment(final String uid, final String ownerId) =
      _$_UpdateApartment;

  String get uid;
  String get ownerId;
  @JsonKey(ignore: true)
  _$$_UpdateApartmentCopyWith<_$_UpdateApartment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteApartmentCopyWith<$Res> {
  factory _$$_DeleteApartmentCopyWith(
          _$_DeleteApartment value, $Res Function(_$_DeleteApartment) then) =
      __$$_DeleteApartmentCopyWithImpl<$Res>;
  $Res call({Apartment apartment});

  $ApartmentCopyWith<$Res> get apartment;
}

/// @nodoc
class __$$_DeleteApartmentCopyWithImpl<$Res>
    extends _$FormApartmentEventCopyWithImpl<$Res>
    implements _$$_DeleteApartmentCopyWith<$Res> {
  __$$_DeleteApartmentCopyWithImpl(
      _$_DeleteApartment _value, $Res Function(_$_DeleteApartment) _then)
      : super(_value, (v) => _then(v as _$_DeleteApartment));

  @override
  _$_DeleteApartment get _value => super._value as _$_DeleteApartment;

  @override
  $Res call({
    Object? apartment = freezed,
  }) {
    return _then(_$_DeleteApartment(
      apartment == freezed
          ? _value.apartment
          : apartment // ignore: cast_nullable_to_non_nullable
              as Apartment,
    ));
  }

  @override
  $ApartmentCopyWith<$Res> get apartment {
    return $ApartmentCopyWith<$Res>(_value.apartment, (value) {
      return _then(_value.copyWith(apartment: value));
    });
  }
}

/// @nodoc

class _$_DeleteApartment implements _DeleteApartment {
  const _$_DeleteApartment(this.apartment);

  @override
  final Apartment apartment;

  @override
  String toString() {
    return 'FormApartmentEvent.deleteApartment(apartment: $apartment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteApartment &&
            const DeepCollectionEquality().equals(other.apartment, apartment));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(apartment));

  @JsonKey(ignore: true)
  @override
  _$$_DeleteApartmentCopyWith<_$_DeleteApartment> get copyWith =>
      __$$_DeleteApartmentCopyWithImpl<_$_DeleteApartment>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Apartment apartment) editingApartment,
    required TResult Function(String region) regionChanged,
    required TResult Function(String district) districtChanged,
    required TResult Function(String street) streetNameChanged,
    required TResult Function(String house) houseNumberChanged,
    required TResult Function(String flat) flatNumberChanged,
    required TResult Function() creatApartment,
    required TResult Function(String uid, String ownerId) updateApartment,
    required TResult Function(Apartment apartment) deleteApartment,
    required TResult Function(List<Apartment> apartments)
        getApartmentUsersAndExpenses,
  }) {
    return deleteApartment(apartment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Apartment apartment)? editingApartment,
    TResult Function(String region)? regionChanged,
    TResult Function(String district)? districtChanged,
    TResult Function(String street)? streetNameChanged,
    TResult Function(String house)? houseNumberChanged,
    TResult Function(String flat)? flatNumberChanged,
    TResult Function()? creatApartment,
    TResult Function(String uid, String ownerId)? updateApartment,
    TResult Function(Apartment apartment)? deleteApartment,
    TResult Function(List<Apartment> apartments)? getApartmentUsersAndExpenses,
  }) {
    return deleteApartment?.call(apartment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Apartment apartment)? editingApartment,
    TResult Function(String region)? regionChanged,
    TResult Function(String district)? districtChanged,
    TResult Function(String street)? streetNameChanged,
    TResult Function(String house)? houseNumberChanged,
    TResult Function(String flat)? flatNumberChanged,
    TResult Function()? creatApartment,
    TResult Function(String uid, String ownerId)? updateApartment,
    TResult Function(Apartment apartment)? deleteApartment,
    TResult Function(List<Apartment> apartments)? getApartmentUsersAndExpenses,
    required TResult orElse(),
  }) {
    if (deleteApartment != null) {
      return deleteApartment(apartment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_EditingApartment value) editingApartment,
    required TResult Function(_RegionChanged value) regionChanged,
    required TResult Function(_DistrictChanged value) districtChanged,
    required TResult Function(_StreetNameChanged value) streetNameChanged,
    required TResult Function(_HouseNumberChanged value) houseNumberChanged,
    required TResult Function(_FlatNumberChanged value) flatNumberChanged,
    required TResult Function(_CreateApartment value) creatApartment,
    required TResult Function(_UpdateApartment value) updateApartment,
    required TResult Function(_DeleteApartment value) deleteApartment,
    required TResult Function(_GetApartmentUsersAndExpenses value)
        getApartmentUsersAndExpenses,
  }) {
    return deleteApartment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_EditingApartment value)? editingApartment,
    TResult Function(_RegionChanged value)? regionChanged,
    TResult Function(_DistrictChanged value)? districtChanged,
    TResult Function(_StreetNameChanged value)? streetNameChanged,
    TResult Function(_HouseNumberChanged value)? houseNumberChanged,
    TResult Function(_FlatNumberChanged value)? flatNumberChanged,
    TResult Function(_CreateApartment value)? creatApartment,
    TResult Function(_UpdateApartment value)? updateApartment,
    TResult Function(_DeleteApartment value)? deleteApartment,
    TResult Function(_GetApartmentUsersAndExpenses value)?
        getApartmentUsersAndExpenses,
  }) {
    return deleteApartment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_EditingApartment value)? editingApartment,
    TResult Function(_RegionChanged value)? regionChanged,
    TResult Function(_DistrictChanged value)? districtChanged,
    TResult Function(_StreetNameChanged value)? streetNameChanged,
    TResult Function(_HouseNumberChanged value)? houseNumberChanged,
    TResult Function(_FlatNumberChanged value)? flatNumberChanged,
    TResult Function(_CreateApartment value)? creatApartment,
    TResult Function(_UpdateApartment value)? updateApartment,
    TResult Function(_DeleteApartment value)? deleteApartment,
    TResult Function(_GetApartmentUsersAndExpenses value)?
        getApartmentUsersAndExpenses,
    required TResult orElse(),
  }) {
    if (deleteApartment != null) {
      return deleteApartment(this);
    }
    return orElse();
  }
}

abstract class _DeleteApartment implements FormApartmentEvent {
  const factory _DeleteApartment(final Apartment apartment) =
      _$_DeleteApartment;

  Apartment get apartment;
  @JsonKey(ignore: true)
  _$$_DeleteApartmentCopyWith<_$_DeleteApartment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetApartmentUsersAndExpensesCopyWith<$Res> {
  factory _$$_GetApartmentUsersAndExpensesCopyWith(
          _$_GetApartmentUsersAndExpenses value,
          $Res Function(_$_GetApartmentUsersAndExpenses) then) =
      __$$_GetApartmentUsersAndExpensesCopyWithImpl<$Res>;
  $Res call({List<Apartment> apartments});
}

/// @nodoc
class __$$_GetApartmentUsersAndExpensesCopyWithImpl<$Res>
    extends _$FormApartmentEventCopyWithImpl<$Res>
    implements _$$_GetApartmentUsersAndExpensesCopyWith<$Res> {
  __$$_GetApartmentUsersAndExpensesCopyWithImpl(
      _$_GetApartmentUsersAndExpenses _value,
      $Res Function(_$_GetApartmentUsersAndExpenses) _then)
      : super(_value, (v) => _then(v as _$_GetApartmentUsersAndExpenses));

  @override
  _$_GetApartmentUsersAndExpenses get _value =>
      super._value as _$_GetApartmentUsersAndExpenses;

  @override
  $Res call({
    Object? apartments = freezed,
  }) {
    return _then(_$_GetApartmentUsersAndExpenses(
      apartments == freezed
          ? _value._apartments
          : apartments // ignore: cast_nullable_to_non_nullable
              as List<Apartment>,
    ));
  }
}

/// @nodoc

class _$_GetApartmentUsersAndExpenses implements _GetApartmentUsersAndExpenses {
  const _$_GetApartmentUsersAndExpenses(final List<Apartment> apartments)
      : _apartments = apartments;

  final List<Apartment> _apartments;
  @override
  List<Apartment> get apartments {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_apartments);
  }

  @override
  String toString() {
    return 'FormApartmentEvent.getApartmentUsersAndExpenses(apartments: $apartments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetApartmentUsersAndExpenses &&
            const DeepCollectionEquality()
                .equals(other._apartments, _apartments));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_apartments));

  @JsonKey(ignore: true)
  @override
  _$$_GetApartmentUsersAndExpensesCopyWith<_$_GetApartmentUsersAndExpenses>
      get copyWith => __$$_GetApartmentUsersAndExpensesCopyWithImpl<
          _$_GetApartmentUsersAndExpenses>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Apartment apartment) editingApartment,
    required TResult Function(String region) regionChanged,
    required TResult Function(String district) districtChanged,
    required TResult Function(String street) streetNameChanged,
    required TResult Function(String house) houseNumberChanged,
    required TResult Function(String flat) flatNumberChanged,
    required TResult Function() creatApartment,
    required TResult Function(String uid, String ownerId) updateApartment,
    required TResult Function(Apartment apartment) deleteApartment,
    required TResult Function(List<Apartment> apartments)
        getApartmentUsersAndExpenses,
  }) {
    return getApartmentUsersAndExpenses(apartments);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Apartment apartment)? editingApartment,
    TResult Function(String region)? regionChanged,
    TResult Function(String district)? districtChanged,
    TResult Function(String street)? streetNameChanged,
    TResult Function(String house)? houseNumberChanged,
    TResult Function(String flat)? flatNumberChanged,
    TResult Function()? creatApartment,
    TResult Function(String uid, String ownerId)? updateApartment,
    TResult Function(Apartment apartment)? deleteApartment,
    TResult Function(List<Apartment> apartments)? getApartmentUsersAndExpenses,
  }) {
    return getApartmentUsersAndExpenses?.call(apartments);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Apartment apartment)? editingApartment,
    TResult Function(String region)? regionChanged,
    TResult Function(String district)? districtChanged,
    TResult Function(String street)? streetNameChanged,
    TResult Function(String house)? houseNumberChanged,
    TResult Function(String flat)? flatNumberChanged,
    TResult Function()? creatApartment,
    TResult Function(String uid, String ownerId)? updateApartment,
    TResult Function(Apartment apartment)? deleteApartment,
    TResult Function(List<Apartment> apartments)? getApartmentUsersAndExpenses,
    required TResult orElse(),
  }) {
    if (getApartmentUsersAndExpenses != null) {
      return getApartmentUsersAndExpenses(apartments);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_EditingApartment value) editingApartment,
    required TResult Function(_RegionChanged value) regionChanged,
    required TResult Function(_DistrictChanged value) districtChanged,
    required TResult Function(_StreetNameChanged value) streetNameChanged,
    required TResult Function(_HouseNumberChanged value) houseNumberChanged,
    required TResult Function(_FlatNumberChanged value) flatNumberChanged,
    required TResult Function(_CreateApartment value) creatApartment,
    required TResult Function(_UpdateApartment value) updateApartment,
    required TResult Function(_DeleteApartment value) deleteApartment,
    required TResult Function(_GetApartmentUsersAndExpenses value)
        getApartmentUsersAndExpenses,
  }) {
    return getApartmentUsersAndExpenses(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_EditingApartment value)? editingApartment,
    TResult Function(_RegionChanged value)? regionChanged,
    TResult Function(_DistrictChanged value)? districtChanged,
    TResult Function(_StreetNameChanged value)? streetNameChanged,
    TResult Function(_HouseNumberChanged value)? houseNumberChanged,
    TResult Function(_FlatNumberChanged value)? flatNumberChanged,
    TResult Function(_CreateApartment value)? creatApartment,
    TResult Function(_UpdateApartment value)? updateApartment,
    TResult Function(_DeleteApartment value)? deleteApartment,
    TResult Function(_GetApartmentUsersAndExpenses value)?
        getApartmentUsersAndExpenses,
  }) {
    return getApartmentUsersAndExpenses?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_EditingApartment value)? editingApartment,
    TResult Function(_RegionChanged value)? regionChanged,
    TResult Function(_DistrictChanged value)? districtChanged,
    TResult Function(_StreetNameChanged value)? streetNameChanged,
    TResult Function(_HouseNumberChanged value)? houseNumberChanged,
    TResult Function(_FlatNumberChanged value)? flatNumberChanged,
    TResult Function(_CreateApartment value)? creatApartment,
    TResult Function(_UpdateApartment value)? updateApartment,
    TResult Function(_DeleteApartment value)? deleteApartment,
    TResult Function(_GetApartmentUsersAndExpenses value)?
        getApartmentUsersAndExpenses,
    required TResult orElse(),
  }) {
    if (getApartmentUsersAndExpenses != null) {
      return getApartmentUsersAndExpenses(this);
    }
    return orElse();
  }
}

abstract class _GetApartmentUsersAndExpenses implements FormApartmentEvent {
  const factory _GetApartmentUsersAndExpenses(
      final List<Apartment> apartments) = _$_GetApartmentUsersAndExpenses;

  List<Apartment> get apartments;
  @JsonKey(ignore: true)
  _$$_GetApartmentUsersAndExpensesCopyWith<_$_GetApartmentUsersAndExpenses>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FormApartmentState {
  Address get regionName => throw _privateConstructorUsedError;
  Address get districtName => throw _privateConstructorUsedError;
  Address get streetName => throw _privateConstructorUsedError;
  HouseNumber get houseNumber => throw _privateConstructorUsedError;
  HouseNumber get flatNumber => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  bool get showErrorMessage => throw _privateConstructorUsedError;
  Option<Either<ApartmentFailure, Unit>> get creationFailure =>
      throw _privateConstructorUsedError;
  Option<Either<ValueFailure, Apartment>> get editOptions =>
      throw _privateConstructorUsedError;
  Option<Either<ApartmentFailure, Unit>> get deleteOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FormApartmentStateCopyWith<FormApartmentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormApartmentStateCopyWith<$Res> {
  factory $FormApartmentStateCopyWith(
          FormApartmentState value, $Res Function(FormApartmentState) then) =
      _$FormApartmentStateCopyWithImpl<$Res>;
  $Res call(
      {Address regionName,
      Address districtName,
      Address streetName,
      HouseNumber houseNumber,
      HouseNumber flatNumber,
      bool loading,
      bool showErrorMessage,
      Option<Either<ApartmentFailure, Unit>> creationFailure,
      Option<Either<ValueFailure, Apartment>> editOptions,
      Option<Either<ApartmentFailure, Unit>> deleteOption});
}

/// @nodoc
class _$FormApartmentStateCopyWithImpl<$Res>
    implements $FormApartmentStateCopyWith<$Res> {
  _$FormApartmentStateCopyWithImpl(this._value, this._then);

  final FormApartmentState _value;
  // ignore: unused_field
  final $Res Function(FormApartmentState) _then;

  @override
  $Res call({
    Object? regionName = freezed,
    Object? districtName = freezed,
    Object? streetName = freezed,
    Object? houseNumber = freezed,
    Object? flatNumber = freezed,
    Object? loading = freezed,
    Object? showErrorMessage = freezed,
    Object? creationFailure = freezed,
    Object? editOptions = freezed,
    Object? deleteOption = freezed,
  }) {
    return _then(_value.copyWith(
      regionName: regionName == freezed
          ? _value.regionName
          : regionName // ignore: cast_nullable_to_non_nullable
              as Address,
      districtName: districtName == freezed
          ? _value.districtName
          : districtName // ignore: cast_nullable_to_non_nullable
              as Address,
      streetName: streetName == freezed
          ? _value.streetName
          : streetName // ignore: cast_nullable_to_non_nullable
              as Address,
      houseNumber: houseNumber == freezed
          ? _value.houseNumber
          : houseNumber // ignore: cast_nullable_to_non_nullable
              as HouseNumber,
      flatNumber: flatNumber == freezed
          ? _value.flatNumber
          : flatNumber // ignore: cast_nullable_to_non_nullable
              as HouseNumber,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessage: showErrorMessage == freezed
          ? _value.showErrorMessage
          : showErrorMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      creationFailure: creationFailure == freezed
          ? _value.creationFailure
          : creationFailure // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApartmentFailure, Unit>>,
      editOptions: editOptions == freezed
          ? _value.editOptions
          : editOptions // ignore: cast_nullable_to_non_nullable
              as Option<Either<ValueFailure, Apartment>>,
      deleteOption: deleteOption == freezed
          ? _value.deleteOption
          : deleteOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApartmentFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$$_AddingApartmentStateCopyWith<$Res>
    implements $FormApartmentStateCopyWith<$Res> {
  factory _$$_AddingApartmentStateCopyWith(_$_AddingApartmentState value,
          $Res Function(_$_AddingApartmentState) then) =
      __$$_AddingApartmentStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Address regionName,
      Address districtName,
      Address streetName,
      HouseNumber houseNumber,
      HouseNumber flatNumber,
      bool loading,
      bool showErrorMessage,
      Option<Either<ApartmentFailure, Unit>> creationFailure,
      Option<Either<ValueFailure, Apartment>> editOptions,
      Option<Either<ApartmentFailure, Unit>> deleteOption});
}

/// @nodoc
class __$$_AddingApartmentStateCopyWithImpl<$Res>
    extends _$FormApartmentStateCopyWithImpl<$Res>
    implements _$$_AddingApartmentStateCopyWith<$Res> {
  __$$_AddingApartmentStateCopyWithImpl(_$_AddingApartmentState _value,
      $Res Function(_$_AddingApartmentState) _then)
      : super(_value, (v) => _then(v as _$_AddingApartmentState));

  @override
  _$_AddingApartmentState get _value => super._value as _$_AddingApartmentState;

  @override
  $Res call({
    Object? regionName = freezed,
    Object? districtName = freezed,
    Object? streetName = freezed,
    Object? houseNumber = freezed,
    Object? flatNumber = freezed,
    Object? loading = freezed,
    Object? showErrorMessage = freezed,
    Object? creationFailure = freezed,
    Object? editOptions = freezed,
    Object? deleteOption = freezed,
  }) {
    return _then(_$_AddingApartmentState(
      regionName: regionName == freezed
          ? _value.regionName
          : regionName // ignore: cast_nullable_to_non_nullable
              as Address,
      districtName: districtName == freezed
          ? _value.districtName
          : districtName // ignore: cast_nullable_to_non_nullable
              as Address,
      streetName: streetName == freezed
          ? _value.streetName
          : streetName // ignore: cast_nullable_to_non_nullable
              as Address,
      houseNumber: houseNumber == freezed
          ? _value.houseNumber
          : houseNumber // ignore: cast_nullable_to_non_nullable
              as HouseNumber,
      flatNumber: flatNumber == freezed
          ? _value.flatNumber
          : flatNumber // ignore: cast_nullable_to_non_nullable
              as HouseNumber,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessage: showErrorMessage == freezed
          ? _value.showErrorMessage
          : showErrorMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      creationFailure: creationFailure == freezed
          ? _value.creationFailure
          : creationFailure // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApartmentFailure, Unit>>,
      editOptions: editOptions == freezed
          ? _value.editOptions
          : editOptions // ignore: cast_nullable_to_non_nullable
              as Option<Either<ValueFailure, Apartment>>,
      deleteOption: deleteOption == freezed
          ? _value.deleteOption
          : deleteOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApartmentFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_AddingApartmentState implements _AddingApartmentState {
  const _$_AddingApartmentState(
      {required this.regionName,
      required this.districtName,
      required this.streetName,
      required this.houseNumber,
      required this.flatNumber,
      required this.loading,
      required this.showErrorMessage,
      required this.creationFailure,
      required this.editOptions,
      required this.deleteOption});

  @override
  final Address regionName;
  @override
  final Address districtName;
  @override
  final Address streetName;
  @override
  final HouseNumber houseNumber;
  @override
  final HouseNumber flatNumber;
  @override
  final bool loading;
  @override
  final bool showErrorMessage;
  @override
  final Option<Either<ApartmentFailure, Unit>> creationFailure;
  @override
  final Option<Either<ValueFailure, Apartment>> editOptions;
  @override
  final Option<Either<ApartmentFailure, Unit>> deleteOption;

  @override
  String toString() {
    return 'FormApartmentState(regionName: $regionName, districtName: $districtName, streetName: $streetName, houseNumber: $houseNumber, flatNumber: $flatNumber, loading: $loading, showErrorMessage: $showErrorMessage, creationFailure: $creationFailure, editOptions: $editOptions, deleteOption: $deleteOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddingApartmentState &&
            const DeepCollectionEquality()
                .equals(other.regionName, regionName) &&
            const DeepCollectionEquality()
                .equals(other.districtName, districtName) &&
            const DeepCollectionEquality()
                .equals(other.streetName, streetName) &&
            const DeepCollectionEquality()
                .equals(other.houseNumber, houseNumber) &&
            const DeepCollectionEquality()
                .equals(other.flatNumber, flatNumber) &&
            const DeepCollectionEquality().equals(other.loading, loading) &&
            const DeepCollectionEquality()
                .equals(other.showErrorMessage, showErrorMessage) &&
            const DeepCollectionEquality()
                .equals(other.creationFailure, creationFailure) &&
            const DeepCollectionEquality()
                .equals(other.editOptions, editOptions) &&
            const DeepCollectionEquality()
                .equals(other.deleteOption, deleteOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(regionName),
      const DeepCollectionEquality().hash(districtName),
      const DeepCollectionEquality().hash(streetName),
      const DeepCollectionEquality().hash(houseNumber),
      const DeepCollectionEquality().hash(flatNumber),
      const DeepCollectionEquality().hash(loading),
      const DeepCollectionEquality().hash(showErrorMessage),
      const DeepCollectionEquality().hash(creationFailure),
      const DeepCollectionEquality().hash(editOptions),
      const DeepCollectionEquality().hash(deleteOption));

  @JsonKey(ignore: true)
  @override
  _$$_AddingApartmentStateCopyWith<_$_AddingApartmentState> get copyWith =>
      __$$_AddingApartmentStateCopyWithImpl<_$_AddingApartmentState>(
          this, _$identity);
}

abstract class _AddingApartmentState implements FormApartmentState {
  const factory _AddingApartmentState(
          {required final Address regionName,
          required final Address districtName,
          required final Address streetName,
          required final HouseNumber houseNumber,
          required final HouseNumber flatNumber,
          required final bool loading,
          required final bool showErrorMessage,
          required final Option<Either<ApartmentFailure, Unit>> creationFailure,
          required final Option<Either<ValueFailure, Apartment>> editOptions,
          required final Option<Either<ApartmentFailure, Unit>> deleteOption}) =
      _$_AddingApartmentState;

  @override
  Address get regionName;
  @override
  Address get districtName;
  @override
  Address get streetName;
  @override
  HouseNumber get houseNumber;
  @override
  HouseNumber get flatNumber;
  @override
  bool get loading;
  @override
  bool get showErrorMessage;
  @override
  Option<Either<ApartmentFailure, Unit>> get creationFailure;
  @override
  Option<Either<ValueFailure, Apartment>> get editOptions;
  @override
  Option<Either<ApartmentFailure, Unit>> get deleteOption;
  @override
  @JsonKey(ignore: true)
  _$$_AddingApartmentStateCopyWith<_$_AddingApartmentState> get copyWith =>
      throw _privateConstructorUsedError;
}
