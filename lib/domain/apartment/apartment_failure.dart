import 'package:freezed_annotation/freezed_annotation.dart';

part 'apartment_failure.freezed.dart';

@freezed
abstract class ApartmentFailure with _$ApartmentFailure {
  const factory ApartmentFailure.serverError() = ServerError;
}
