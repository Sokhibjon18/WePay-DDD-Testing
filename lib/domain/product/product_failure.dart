import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_failure.freezed.dart';

@freezed
abstract class ProductFailure with _$ProductFailure {
  const factory ProductFailure.server() = ServerError;
  const factory ProductFailure.permissionDenied() = PermissionDenied;
  const factory ProductFailure.unexpected(String errorMessage) = Unexpected;
}
