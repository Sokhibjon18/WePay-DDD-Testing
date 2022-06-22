// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'crud_apartment_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CRUDApartmentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String region) regionChanged,
    required TResult Function(String district) districtChanged,
    required TResult Function(String street) streetNameChanged,
    required TResult Function(String house) houseNumberChanged,
    required TResult Function(String flat) flatNumberChanged,
    required TResult Function() creatApartment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String region)? regionChanged,
    TResult Function(String district)? districtChanged,
    TResult Function(String street)? streetNameChanged,
    TResult Function(String house)? houseNumberChanged,
    TResult Function(String flat)? flatNumberChanged,
    TResult Function()? creatApartment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String region)? regionChanged,
    TResult Function(String district)? districtChanged,
    TResult Function(String street)? streetNameChanged,
    TResult Function(String house)? houseNumberChanged,
    TResult Function(String flat)? flatNumberChanged,
    TResult Function()? creatApartment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RegionChanged value) regionChanged,
    required TResult Function(_DistrictChanged value) districtChanged,
    required TResult Function(_StreetNameChanged value) streetNameChanged,
    required TResult Function(_HouseNumberChanged value) houseNumberChanged,
    required TResult Function(_FlatNumberChanged value) flatNumberChanged,
    required TResult Function(_CreateApartment value) creatApartment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RegionChanged value)? regionChanged,
    TResult Function(_DistrictChanged value)? districtChanged,
    TResult Function(_StreetNameChanged value)? streetNameChanged,
    TResult Function(_HouseNumberChanged value)? houseNumberChanged,
    TResult Function(_FlatNumberChanged value)? flatNumberChanged,
    TResult Function(_CreateApartment value)? creatApartment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegionChanged value)? regionChanged,
    TResult Function(_DistrictChanged value)? districtChanged,
    TResult Function(_StreetNameChanged value)? streetNameChanged,
    TResult Function(_HouseNumberChanged value)? houseNumberChanged,
    TResult Function(_FlatNumberChanged value)? flatNumberChanged,
    TResult Function(_CreateApartment value)? creatApartment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CRUDApartmentEventCopyWith<$Res> {
  factory $CRUDApartmentEventCopyWith(
          CRUDApartmentEvent value, $Res Function(CRUDApartmentEvent) then) =
      _$CRUDApartmentEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CRUDApartmentEventCopyWithImpl<$Res>
    implements $CRUDApartmentEventCopyWith<$Res> {
  _$CRUDApartmentEventCopyWithImpl(this._value, this._then);

  final CRUDApartmentEvent _value;
  // ignore: unused_field
  final $Res Function(CRUDApartmentEvent) _then;
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
    extends _$CRUDApartmentEventCopyWithImpl<$Res>
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
    return 'CRUDApartmentEvent.regionChanged(region: $region)';
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
    required TResult Function(String region) regionChanged,
    required TResult Function(String district) districtChanged,
    required TResult Function(String street) streetNameChanged,
    required TResult Function(String house) houseNumberChanged,
    required TResult Function(String flat) flatNumberChanged,
    required TResult Function() creatApartment,
  }) {
    return regionChanged(region);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String region)? regionChanged,
    TResult Function(String district)? districtChanged,
    TResult Function(String street)? streetNameChanged,
    TResult Function(String house)? houseNumberChanged,
    TResult Function(String flat)? flatNumberChanged,
    TResult Function()? creatApartment,
  }) {
    return regionChanged?.call(region);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String region)? regionChanged,
    TResult Function(String district)? districtChanged,
    TResult Function(String street)? streetNameChanged,
    TResult Function(String house)? houseNumberChanged,
    TResult Function(String flat)? flatNumberChanged,
    TResult Function()? creatApartment,
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
    required TResult Function(_RegionChanged value) regionChanged,
    required TResult Function(_DistrictChanged value) districtChanged,
    required TResult Function(_StreetNameChanged value) streetNameChanged,
    required TResult Function(_HouseNumberChanged value) houseNumberChanged,
    required TResult Function(_FlatNumberChanged value) flatNumberChanged,
    required TResult Function(_CreateApartment value) creatApartment,
  }) {
    return regionChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RegionChanged value)? regionChanged,
    TResult Function(_DistrictChanged value)? districtChanged,
    TResult Function(_StreetNameChanged value)? streetNameChanged,
    TResult Function(_HouseNumberChanged value)? houseNumberChanged,
    TResult Function(_FlatNumberChanged value)? flatNumberChanged,
    TResult Function(_CreateApartment value)? creatApartment,
  }) {
    return regionChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegionChanged value)? regionChanged,
    TResult Function(_DistrictChanged value)? districtChanged,
    TResult Function(_StreetNameChanged value)? streetNameChanged,
    TResult Function(_HouseNumberChanged value)? houseNumberChanged,
    TResult Function(_FlatNumberChanged value)? flatNumberChanged,
    TResult Function(_CreateApartment value)? creatApartment,
    required TResult orElse(),
  }) {
    if (regionChanged != null) {
      return regionChanged(this);
    }
    return orElse();
  }
}

abstract class _RegionChanged implements CRUDApartmentEvent {
  const factory _RegionChanged(final String region) = _$_RegionChanged;

  String get region => throw _privateConstructorUsedError;
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
    extends _$CRUDApartmentEventCopyWithImpl<$Res>
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
    return 'CRUDApartmentEvent.districtChanged(district: $district)';
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
    required TResult Function(String region) regionChanged,
    required TResult Function(String district) districtChanged,
    required TResult Function(String street) streetNameChanged,
    required TResult Function(String house) houseNumberChanged,
    required TResult Function(String flat) flatNumberChanged,
    required TResult Function() creatApartment,
  }) {
    return districtChanged(district);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String region)? regionChanged,
    TResult Function(String district)? districtChanged,
    TResult Function(String street)? streetNameChanged,
    TResult Function(String house)? houseNumberChanged,
    TResult Function(String flat)? flatNumberChanged,
    TResult Function()? creatApartment,
  }) {
    return districtChanged?.call(district);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String region)? regionChanged,
    TResult Function(String district)? districtChanged,
    TResult Function(String street)? streetNameChanged,
    TResult Function(String house)? houseNumberChanged,
    TResult Function(String flat)? flatNumberChanged,
    TResult Function()? creatApartment,
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
    required TResult Function(_RegionChanged value) regionChanged,
    required TResult Function(_DistrictChanged value) districtChanged,
    required TResult Function(_StreetNameChanged value) streetNameChanged,
    required TResult Function(_HouseNumberChanged value) houseNumberChanged,
    required TResult Function(_FlatNumberChanged value) flatNumberChanged,
    required TResult Function(_CreateApartment value) creatApartment,
  }) {
    return districtChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RegionChanged value)? regionChanged,
    TResult Function(_DistrictChanged value)? districtChanged,
    TResult Function(_StreetNameChanged value)? streetNameChanged,
    TResult Function(_HouseNumberChanged value)? houseNumberChanged,
    TResult Function(_FlatNumberChanged value)? flatNumberChanged,
    TResult Function(_CreateApartment value)? creatApartment,
  }) {
    return districtChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegionChanged value)? regionChanged,
    TResult Function(_DistrictChanged value)? districtChanged,
    TResult Function(_StreetNameChanged value)? streetNameChanged,
    TResult Function(_HouseNumberChanged value)? houseNumberChanged,
    TResult Function(_FlatNumberChanged value)? flatNumberChanged,
    TResult Function(_CreateApartment value)? creatApartment,
    required TResult orElse(),
  }) {
    if (districtChanged != null) {
      return districtChanged(this);
    }
    return orElse();
  }
}

abstract class _DistrictChanged implements CRUDApartmentEvent {
  const factory _DistrictChanged(final String district) = _$_DistrictChanged;

  String get district => throw _privateConstructorUsedError;
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
    extends _$CRUDApartmentEventCopyWithImpl<$Res>
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
    return 'CRUDApartmentEvent.streetNameChanged(street: $street)';
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
    required TResult Function(String region) regionChanged,
    required TResult Function(String district) districtChanged,
    required TResult Function(String street) streetNameChanged,
    required TResult Function(String house) houseNumberChanged,
    required TResult Function(String flat) flatNumberChanged,
    required TResult Function() creatApartment,
  }) {
    return streetNameChanged(street);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String region)? regionChanged,
    TResult Function(String district)? districtChanged,
    TResult Function(String street)? streetNameChanged,
    TResult Function(String house)? houseNumberChanged,
    TResult Function(String flat)? flatNumberChanged,
    TResult Function()? creatApartment,
  }) {
    return streetNameChanged?.call(street);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String region)? regionChanged,
    TResult Function(String district)? districtChanged,
    TResult Function(String street)? streetNameChanged,
    TResult Function(String house)? houseNumberChanged,
    TResult Function(String flat)? flatNumberChanged,
    TResult Function()? creatApartment,
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
    required TResult Function(_RegionChanged value) regionChanged,
    required TResult Function(_DistrictChanged value) districtChanged,
    required TResult Function(_StreetNameChanged value) streetNameChanged,
    required TResult Function(_HouseNumberChanged value) houseNumberChanged,
    required TResult Function(_FlatNumberChanged value) flatNumberChanged,
    required TResult Function(_CreateApartment value) creatApartment,
  }) {
    return streetNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RegionChanged value)? regionChanged,
    TResult Function(_DistrictChanged value)? districtChanged,
    TResult Function(_StreetNameChanged value)? streetNameChanged,
    TResult Function(_HouseNumberChanged value)? houseNumberChanged,
    TResult Function(_FlatNumberChanged value)? flatNumberChanged,
    TResult Function(_CreateApartment value)? creatApartment,
  }) {
    return streetNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegionChanged value)? regionChanged,
    TResult Function(_DistrictChanged value)? districtChanged,
    TResult Function(_StreetNameChanged value)? streetNameChanged,
    TResult Function(_HouseNumberChanged value)? houseNumberChanged,
    TResult Function(_FlatNumberChanged value)? flatNumberChanged,
    TResult Function(_CreateApartment value)? creatApartment,
    required TResult orElse(),
  }) {
    if (streetNameChanged != null) {
      return streetNameChanged(this);
    }
    return orElse();
  }
}

abstract class _StreetNameChanged implements CRUDApartmentEvent {
  const factory _StreetNameChanged(final String street) = _$_StreetNameChanged;

  String get street => throw _privateConstructorUsedError;
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
    extends _$CRUDApartmentEventCopyWithImpl<$Res>
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
    return 'CRUDApartmentEvent.houseNumberChanged(house: $house)';
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
    required TResult Function(String region) regionChanged,
    required TResult Function(String district) districtChanged,
    required TResult Function(String street) streetNameChanged,
    required TResult Function(String house) houseNumberChanged,
    required TResult Function(String flat) flatNumberChanged,
    required TResult Function() creatApartment,
  }) {
    return houseNumberChanged(house);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String region)? regionChanged,
    TResult Function(String district)? districtChanged,
    TResult Function(String street)? streetNameChanged,
    TResult Function(String house)? houseNumberChanged,
    TResult Function(String flat)? flatNumberChanged,
    TResult Function()? creatApartment,
  }) {
    return houseNumberChanged?.call(house);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String region)? regionChanged,
    TResult Function(String district)? districtChanged,
    TResult Function(String street)? streetNameChanged,
    TResult Function(String house)? houseNumberChanged,
    TResult Function(String flat)? flatNumberChanged,
    TResult Function()? creatApartment,
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
    required TResult Function(_RegionChanged value) regionChanged,
    required TResult Function(_DistrictChanged value) districtChanged,
    required TResult Function(_StreetNameChanged value) streetNameChanged,
    required TResult Function(_HouseNumberChanged value) houseNumberChanged,
    required TResult Function(_FlatNumberChanged value) flatNumberChanged,
    required TResult Function(_CreateApartment value) creatApartment,
  }) {
    return houseNumberChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RegionChanged value)? regionChanged,
    TResult Function(_DistrictChanged value)? districtChanged,
    TResult Function(_StreetNameChanged value)? streetNameChanged,
    TResult Function(_HouseNumberChanged value)? houseNumberChanged,
    TResult Function(_FlatNumberChanged value)? flatNumberChanged,
    TResult Function(_CreateApartment value)? creatApartment,
  }) {
    return houseNumberChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegionChanged value)? regionChanged,
    TResult Function(_DistrictChanged value)? districtChanged,
    TResult Function(_StreetNameChanged value)? streetNameChanged,
    TResult Function(_HouseNumberChanged value)? houseNumberChanged,
    TResult Function(_FlatNumberChanged value)? flatNumberChanged,
    TResult Function(_CreateApartment value)? creatApartment,
    required TResult orElse(),
  }) {
    if (houseNumberChanged != null) {
      return houseNumberChanged(this);
    }
    return orElse();
  }
}

abstract class _HouseNumberChanged implements CRUDApartmentEvent {
  const factory _HouseNumberChanged(final String house) = _$_HouseNumberChanged;

  String get house => throw _privateConstructorUsedError;
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
    extends _$CRUDApartmentEventCopyWithImpl<$Res>
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
    return 'CRUDApartmentEvent.flatNumberChanged(flat: $flat)';
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
    required TResult Function(String region) regionChanged,
    required TResult Function(String district) districtChanged,
    required TResult Function(String street) streetNameChanged,
    required TResult Function(String house) houseNumberChanged,
    required TResult Function(String flat) flatNumberChanged,
    required TResult Function() creatApartment,
  }) {
    return flatNumberChanged(flat);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String region)? regionChanged,
    TResult Function(String district)? districtChanged,
    TResult Function(String street)? streetNameChanged,
    TResult Function(String house)? houseNumberChanged,
    TResult Function(String flat)? flatNumberChanged,
    TResult Function()? creatApartment,
  }) {
    return flatNumberChanged?.call(flat);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String region)? regionChanged,
    TResult Function(String district)? districtChanged,
    TResult Function(String street)? streetNameChanged,
    TResult Function(String house)? houseNumberChanged,
    TResult Function(String flat)? flatNumberChanged,
    TResult Function()? creatApartment,
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
    required TResult Function(_RegionChanged value) regionChanged,
    required TResult Function(_DistrictChanged value) districtChanged,
    required TResult Function(_StreetNameChanged value) streetNameChanged,
    required TResult Function(_HouseNumberChanged value) houseNumberChanged,
    required TResult Function(_FlatNumberChanged value) flatNumberChanged,
    required TResult Function(_CreateApartment value) creatApartment,
  }) {
    return flatNumberChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RegionChanged value)? regionChanged,
    TResult Function(_DistrictChanged value)? districtChanged,
    TResult Function(_StreetNameChanged value)? streetNameChanged,
    TResult Function(_HouseNumberChanged value)? houseNumberChanged,
    TResult Function(_FlatNumberChanged value)? flatNumberChanged,
    TResult Function(_CreateApartment value)? creatApartment,
  }) {
    return flatNumberChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegionChanged value)? regionChanged,
    TResult Function(_DistrictChanged value)? districtChanged,
    TResult Function(_StreetNameChanged value)? streetNameChanged,
    TResult Function(_HouseNumberChanged value)? houseNumberChanged,
    TResult Function(_FlatNumberChanged value)? flatNumberChanged,
    TResult Function(_CreateApartment value)? creatApartment,
    required TResult orElse(),
  }) {
    if (flatNumberChanged != null) {
      return flatNumberChanged(this);
    }
    return orElse();
  }
}

abstract class _FlatNumberChanged implements CRUDApartmentEvent {
  const factory _FlatNumberChanged(final String flat) = _$_FlatNumberChanged;

  String get flat => throw _privateConstructorUsedError;
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
    extends _$CRUDApartmentEventCopyWithImpl<$Res>
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
    return 'CRUDApartmentEvent.creatApartment()';
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
    required TResult Function(String region) regionChanged,
    required TResult Function(String district) districtChanged,
    required TResult Function(String street) streetNameChanged,
    required TResult Function(String house) houseNumberChanged,
    required TResult Function(String flat) flatNumberChanged,
    required TResult Function() creatApartment,
  }) {
    return creatApartment();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String region)? regionChanged,
    TResult Function(String district)? districtChanged,
    TResult Function(String street)? streetNameChanged,
    TResult Function(String house)? houseNumberChanged,
    TResult Function(String flat)? flatNumberChanged,
    TResult Function()? creatApartment,
  }) {
    return creatApartment?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String region)? regionChanged,
    TResult Function(String district)? districtChanged,
    TResult Function(String street)? streetNameChanged,
    TResult Function(String house)? houseNumberChanged,
    TResult Function(String flat)? flatNumberChanged,
    TResult Function()? creatApartment,
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
    required TResult Function(_RegionChanged value) regionChanged,
    required TResult Function(_DistrictChanged value) districtChanged,
    required TResult Function(_StreetNameChanged value) streetNameChanged,
    required TResult Function(_HouseNumberChanged value) houseNumberChanged,
    required TResult Function(_FlatNumberChanged value) flatNumberChanged,
    required TResult Function(_CreateApartment value) creatApartment,
  }) {
    return creatApartment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RegionChanged value)? regionChanged,
    TResult Function(_DistrictChanged value)? districtChanged,
    TResult Function(_StreetNameChanged value)? streetNameChanged,
    TResult Function(_HouseNumberChanged value)? houseNumberChanged,
    TResult Function(_FlatNumberChanged value)? flatNumberChanged,
    TResult Function(_CreateApartment value)? creatApartment,
  }) {
    return creatApartment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RegionChanged value)? regionChanged,
    TResult Function(_DistrictChanged value)? districtChanged,
    TResult Function(_StreetNameChanged value)? streetNameChanged,
    TResult Function(_HouseNumberChanged value)? houseNumberChanged,
    TResult Function(_FlatNumberChanged value)? flatNumberChanged,
    TResult Function(_CreateApartment value)? creatApartment,
    required TResult orElse(),
  }) {
    if (creatApartment != null) {
      return creatApartment(this);
    }
    return orElse();
  }
}

abstract class _CreateApartment implements CRUDApartmentEvent {
  const factory _CreateApartment() = _$_CreateApartment;
}

/// @nodoc
mixin _$CRUDApartmentState {
  Address get regionName => throw _privateConstructorUsedError;
  Address get districtName => throw _privateConstructorUsedError;
  Address get streetName => throw _privateConstructorUsedError;
  HouseNumber get houseNumber => throw _privateConstructorUsedError;
  HouseNumber get flatNumber => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  bool get showErrorMessage => throw _privateConstructorUsedError;
  Option<dynamic> get creationFailure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CRUDApartmentStateCopyWith<CRUDApartmentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CRUDApartmentStateCopyWith<$Res> {
  factory $CRUDApartmentStateCopyWith(
          CRUDApartmentState value, $Res Function(CRUDApartmentState) then) =
      _$CRUDApartmentStateCopyWithImpl<$Res>;
  $Res call(
      {Address regionName,
      Address districtName,
      Address streetName,
      HouseNumber houseNumber,
      HouseNumber flatNumber,
      bool loading,
      bool showErrorMessage,
      Option<dynamic> creationFailure});
}

/// @nodoc
class _$CRUDApartmentStateCopyWithImpl<$Res>
    implements $CRUDApartmentStateCopyWith<$Res> {
  _$CRUDApartmentStateCopyWithImpl(this._value, this._then);

  final CRUDApartmentState _value;
  // ignore: unused_field
  final $Res Function(CRUDApartmentState) _then;

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
              as Option<dynamic>,
    ));
  }
}

/// @nodoc
abstract class _$$_AddingApartmentStateCopyWith<$Res>
    implements $CRUDApartmentStateCopyWith<$Res> {
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
      Option<dynamic> creationFailure});
}

/// @nodoc
class __$$_AddingApartmentStateCopyWithImpl<$Res>
    extends _$CRUDApartmentStateCopyWithImpl<$Res>
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
              as Option<dynamic>,
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
      required this.creationFailure});

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
  final Option<dynamic> creationFailure;

  @override
  String toString() {
    return 'CRUDApartmentState(regionName: $regionName, districtName: $districtName, streetName: $streetName, houseNumber: $houseNumber, flatNumber: $flatNumber, loading: $loading, showErrorMessage: $showErrorMessage, creationFailure: $creationFailure)';
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
                .equals(other.creationFailure, creationFailure));
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
      const DeepCollectionEquality().hash(creationFailure));

  @JsonKey(ignore: true)
  @override
  _$$_AddingApartmentStateCopyWith<_$_AddingApartmentState> get copyWith =>
      __$$_AddingApartmentStateCopyWithImpl<_$_AddingApartmentState>(
          this, _$identity);
}

abstract class _AddingApartmentState implements CRUDApartmentState {
  const factory _AddingApartmentState(
          {required final Address regionName,
          required final Address districtName,
          required final Address streetName,
          required final HouseNumber houseNumber,
          required final HouseNumber flatNumber,
          required final bool loading,
          required final bool showErrorMessage,
          required final Option<dynamic> creationFailure}) =
      _$_AddingApartmentState;

  @override
  Address get regionName => throw _privateConstructorUsedError;
  @override
  Address get districtName => throw _privateConstructorUsedError;
  @override
  Address get streetName => throw _privateConstructorUsedError;
  @override
  HouseNumber get houseNumber => throw _privateConstructorUsedError;
  @override
  HouseNumber get flatNumber => throw _privateConstructorUsedError;
  @override
  bool get loading => throw _privateConstructorUsedError;
  @override
  bool get showErrorMessage => throw _privateConstructorUsedError;
  @override
  Option<dynamic> get creationFailure => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AddingApartmentStateCopyWith<_$_AddingApartmentState> get copyWith =>
      throw _privateConstructorUsedError;
}
