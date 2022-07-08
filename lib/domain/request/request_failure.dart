import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_failure.freezed.dart';

@freezed
abstract class RequestFailure with _$RequestFailure {
  const factory RequestFailure.server({String? errorMessage}) = _ServerFailure;
  const factory RequestFailure.unexpected(String errorMessage) = _Unexpected;
  const factory RequestFailure.userAlreadyAdded() = _UserAlreadyAdded;
  const factory RequestFailure.haveRequest() = _HaveRequest;
}
